import 'dart:math' as math;
import 'package:flutter/material.dart';

class DemoAnimatedBuilder extends StatefulWidget {
  const DemoAnimatedBuilder({super.key});

  @override
  State<StatefulWidget> createState() => _DemoAnimatedBuilderState();
}

class _DemoAnimatedBuilderState extends State<DemoAnimatedBuilder>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  static const String _title = 'AnimatedBuilder';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

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
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.teal,
            child: const Center(
              child: Text(
                'Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
