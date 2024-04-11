import 'package:flutter/material.dart';
import 'package:rankings_flutter/common/utils/extensions.dart';

class FullscreenImageDialog extends StatelessWidget {
  const FullscreenImageDialog(this.imageUrl, {super.key});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          InteractiveViewer(child: Image.network(imageUrl)),
          Positioned(
            top: 10,
            right: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: context.pop,
                icon: const Icon(
                  Icons.close,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
