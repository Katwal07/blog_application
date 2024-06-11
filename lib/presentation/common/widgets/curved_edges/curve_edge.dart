part of '../widget_import.dart';

class ClipPathWidget extends StatelessWidget {
  const ClipPathWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppCurveEdge(),
      child: child,
    );
  }
}
