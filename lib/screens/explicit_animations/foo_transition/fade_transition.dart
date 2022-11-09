import 'package:flutter/material.dart';

class DemoFadeTransition extends StatefulWidget {
  const DemoFadeTransition({super.key});

  @override
  State<DemoFadeTransition> createState() => _DemoFadeTransitionState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _DemoFadeTransitionState extends State<DemoFadeTransition>
    with TickerProviderStateMixin {
  static const String _title = 'FadeTransition';
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
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
        title: const Text(
          _title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: FadeTransition(
            opacity: _animation,
            child: const Padding(
                padding: EdgeInsets.all(8),
                child: FlutterLogo(
                  size: 200,
                )),
          ),
        ),
      ),
    );
  }
}
