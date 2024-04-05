import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankings_flutter/common/gen/l10n/l10n.dart';
import 'package:rankings_flutter/common/utils/extensions.dart';
import 'package:rankings_flutter/view/bloc/chat/chat_bloc.dart';
import 'package:rankings_flutter/view/screens/widgets/chat_bubble.dart';
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

  void sendMessage(String value) {
    if (value.isEmpty) return;

    textController.clear();
    context.read<ChatBloc>().add(ChatEvent.sendMessage(value));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) => state.whenOrNull(
        error: (_, error) => context.showSnackbar(
          error.getLocalizedErrorMessage(context),
          error: true,
        ),
        loaded: (_) => WidgetsBinding.instance.addPostFrameCallback(
          (_) => scrollToBottom(),
        ),
      ),
      builder: (context, state) {
        return Stack(
          fit: StackFit.expand,
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
                          if (state.messages.isEmpty) {
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
                              children:
                                  state.messages.map(ChatBubble.new).toList(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: textController,
                        autocorrect: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        onSubmitted: sendMessage,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            state.maybeWhen(
              orElse: SizedBox.shrink,
              loading: (_) => Container(
                alignment: Alignment.center,
                color: Colors.black26,
                child: const CircularProgressIndicator(),
              ),
            ),
          ],
        );
      },
    );
  }
}
