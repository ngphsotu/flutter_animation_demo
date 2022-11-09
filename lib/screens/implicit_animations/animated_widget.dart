import 'dart:math' as math;
import 'package:flutter/material.dart';

class FourteenthScreen extends StatelessWidget {
  const FourteenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DemoAnimatedWidget();
  }
}

class SpinningContainer extends AnimatedWidget {
  const SpinningContainer({
    super.key,
    required AnimationController controller,
  }) : super(listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 2.0 * math.pi,
      child: Container(width: 200.0, height: 200.0, color: Colors.green),
    );
  }
}

class DemoAnimatedWidget extends StatefulWidget {
  const DemoAnimatedWidget({super.key});

  @override
  State<DemoAnimatedWidget> createState() => _DemoAnimatedWidgetState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _DemoAnimatedWidgetState extends State<DemoAnimatedWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: SpinningContainer(controller: _controller)));
  }
}
