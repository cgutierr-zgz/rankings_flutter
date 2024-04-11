import 'package:flutter/material.dart';

class AnimatedDisableButton extends StatelessWidget {
  const AnimatedDisableButton({
    required this.isActive,
    required this.child,
    super.key,
  });

  final bool isActive;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isActive,
      child: AnimatedOpacity(
        opacity: isActive ? 1 : 0,
        duration: Durations.short2,
        child: child,
      ),
    );
  }
}
