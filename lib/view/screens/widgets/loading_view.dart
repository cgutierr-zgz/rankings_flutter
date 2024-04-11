import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rankings_flutter/common/utils/extensions.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  late AnimationController verticalController;
  late Animation<double> verticalAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(controller);

    verticalController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    verticalAnimation =
        Tween<double>(begin: -1, end: 1).animate(verticalController);

    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        controller
          ..reset()
          ..forward();
      }
    });

    verticalController.addListener(() {
      if (verticalController.status == AnimationStatus.completed) {
        verticalController.reverse();
      } else if (verticalController.status == AnimationStatus.dismissed) {
        verticalController.forward();
      }
    });

    controller.forward();
    verticalController.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    verticalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.theme.colorScheme.secondary.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: context.theme.colorScheme.primary.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: CustomPaint(
        size: const Size(100, 100),
        painter: WavePainter(
          animation: animation,
          verticalAnimation: verticalAnimation,
          color: context.theme.colorScheme.primary,
        ),
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  WavePainter({
    required this.animation,
    required this.verticalAnimation,
    this.color = Colors.blue,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Animation<double> verticalAnimation;
  final Color color;

  static const height = 0.2;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path()..moveTo(0, size.height * (1 - height));

    final wavelength = size.width * (1 - height);

    for (var x = 0; x <= size.width; x += 5) {
      final y = sin((x / wavelength * 2 * pi) + animation.value * 2 * pi) * 20 +
          size.height * (1 - height);

      final offsetY = sin(verticalAnimation.value * pi) * 10;
      final adjustedY = y + offsetY;

      path.lineTo(x.toDouble(), adjustedY * (1 - height * 2));
    }

    path
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
