import 'dart:math' as math;

import 'package:flutter/material.dart';

class SpinningContainer extends AnimatedWidget {
  const SpinningContainer({
    super.key,
    required AnimationController controller,
  }) : super(listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.rotate(
        angle: _progress.value * 2.0 * math.pi,
        child: Container(width: 200.0, height: 200.0, color: Colors.pink),
      ),
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
  static const String _title = 'AnimatedWidget';
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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(_title, style: TextStyle(color: Colors.black)),
        ),
        body: Center(child: SpinningContainer(controller: _controller)));
  }
}
