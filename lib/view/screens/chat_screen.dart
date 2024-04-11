import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankings_flutter/common/gen/l10n/l10n.dart';
import 'package:rankings_flutter/common/utils/extensions.dart';
import 'package:rankings_flutter/view/bloc/chat/chat_bloc.dart';
import 'package:rankings_flutter/view/screens/widgets/chat_bubble.dart';
import 'package:rankings_flutter/view/screens/widgets/loading_view.dart';
import 'package:rankings_flutter/view/screens/widgets/settings_drawer.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final textController = TextEditingController();
  final scrollController = ScrollController();

  @override
  void dispose() {
    textController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  void scrollToBottom() {
    if (!scrollController.hasClients) return;

    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void sendMessage() {
    final text = textController.text;
    if (textController.text.isEmpty) return;

    textController.clear();
    context.read<ChatBloc>().add(ChatEvent.sendMessage(text));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) => state.whenOrNull(
        error: (_, error, __) => context.showSnackbar(
          error.getLocalizedErrorMessage(context),
          error: true,
        ),
        loaded: (conversations, currentConversationId) =>
            WidgetsBinding.instance.addPostFrameCallback(
          (_) => scrollToBottom(),
        ),
      ),
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Scaffold(
              appBar: AppBar(title: Text(L10n.of(context).rankingTitle)),
              drawer: const SettingsDrawer(),
              body: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          if (state.selectedConversation == null ||
                              state.selectedConversation!.messages.isEmpty) {
                            return Center(
                              child: Text(
                                l10n.emptyListHint,
                                textAlign: TextAlign.center,
                              ),
                            );
                          }

                          return Scrollbar(
                            controller: scrollController,
                            child: ListView(
                              controller: scrollController,
                              children: state.selectedConversation!.messages
                                  .map(ChatBubble.new)
                                  .toList(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: IgnorePointer(
                        ignoring: state.maybeWhen(
                          loading: (_, __) => true,
                          orElse: () => false,
                        ),
                        child: TextField(
                          controller: textController,
                          autocorrect: false,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            suffixIcon: state.maybeWhen(
                              orElse: SizedBox.shrink,
                              loading: (_, __) => const Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SizedBox.square(
                                    dimension: 24,
                                    child: CircularProgressIndicator(
                                      strokeCap: StrokeCap.round,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onSubmitted: (_) => state.maybeWhen(
                            loading: (_, __) => null,
                            orElse: sendMessage,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            state.maybeWhen(
              orElse: SizedBox.shrink,
              loading: (_, __) => Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    color: Colors.black26,
                  ),
                  const LoadingView(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
