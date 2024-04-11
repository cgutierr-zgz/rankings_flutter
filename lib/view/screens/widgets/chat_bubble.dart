import 'package:flutter/material.dart';
import 'package:rankings_flutter/common/gen/l10n/l10n.dart';
import 'package:rankings_flutter/common/utils/extensions.dart';
import 'package:rankings_flutter/data/models/chat_message.dart';
import 'package:rankings_flutter/view/screens/widgets/fullscreen_image_dialog.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(this.message, {super.key});

  final ChatMessage message;

  /*
  ** Computed properties
  */

  MainAxisAlignment get mainAxisAlignment =>
      message.isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start;

  CrossAxisAlignment get crossAxisAlignment =>
      message.isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start;

  BorderRadiusGeometry get borderRadius => BorderRadiusDirectional.only(
        topStart: const Radius.circular(10),
        topEnd: const Radius.circular(10),
        bottomStart:
            !message.isMyMessage ? Radius.zero : const Radius.circular(10),
        bottomEnd:
            message.isMyMessage ? Radius.zero : const Radius.circular(10),
      );

  EdgeInsetsGeometry get margin => EdgeInsets.only(
        top: 5,
        bottom: 5,
        left: message.isMyMessage ? 50 : 20,
        right: !message.isMyMessage ? 50 : 20,
      );

  Color getColor(BuildContext context) => switch (context.isDarkMode) {
        true =>
          message.isMyMessage ? Colors.green.shade700 : Colors.grey.shade800,
        false =>
          message.isMyMessage ? Colors.green.shade100 : Colors.grey.shade200,
      };

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Flexible(
          child: Container(
            margin: margin,
            decoration: BoxDecoration(
              color: getColor(context),
              borderRadius: borderRadius,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: crossAxisAlignment,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: message.isMyMessage ? 0 : 30,
                        ),
                        child: SelectableText(message.content),
                      ),
                      if (message.images.isNotEmpty) ...[
                        const SizedBox(height: 10),
                        Center(child: _ChatImages(message.images)),
                      ],
                    ],
                  ),
                ),
                if (!message.isMyMessage)
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => message.content.copy().then(
                          (_) => context.showSnackbar(
                            l10n.copiedToClipboard,
                          ),
                        ),
                    icon: const Icon(
                      Icons.copy,
                      size: 20,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ChatImages extends StatelessWidget {
  const _ChatImages(this.images);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: images
          .map(
            (e) => LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth / 2 - 5;
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    e,
                    width: width,
                    frameBuilder: (_, child, __, ___) => GestureDetector(
                      child: child,
                      onTap: () => showDialog<void>(
                        context: context,
                        useSafeArea: false,
                        builder: (_) => FullscreenImageDialog(e),
                      ),
                    ),
                    errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                  ),
                );
              },
            ),
          )
          .toList(),
    );
  }
}
