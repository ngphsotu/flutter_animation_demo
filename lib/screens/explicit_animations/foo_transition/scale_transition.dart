import 'package:flutter/material.dart';

class DemoScaleTransition extends StatefulWidget {
  const DemoScaleTransition({super.key});

  @override
  State<DemoScaleTransition> createState() => _DemoScaleTransitionState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _DemoScaleTransitionState extends State<DemoScaleTransition>
    with TickerProviderStateMixin {
  static const String _title = 'ScaleTransition';
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

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
        child: ScaleTransition(
          scale: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0),
          ),
        ),
      ),
    );
  }
}
