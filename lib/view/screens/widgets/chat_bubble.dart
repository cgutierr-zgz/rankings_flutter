import 'package:flutter/material.dart';
import 'package:rankings_flutter/common/utils/extensions.dart';
import 'package:rankings_flutter/data/models/chat_message.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(this.message, {super.key});

  final ChatMessage message;

  /*
  ** Computed properties
  */

  MainAxisAlignment get mainAxisAlignment =>
      message.isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start;

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
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: margin,
            decoration: BoxDecoration(
              color: getColor(context),
              borderRadius: borderRadius,
            ),
            child: Text(message.content),
          ),
        ),
      ],
    );
  }
}
