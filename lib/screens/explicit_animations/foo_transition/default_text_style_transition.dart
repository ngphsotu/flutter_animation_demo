import 'package:flutter/material.dart';

class DemoDefaultTextStyleTransition extends StatefulWidget {
  const DemoDefaultTextStyleTransition({super.key});

  @override
  State<DemoDefaultTextStyleTransition> createState() =>
      _DemoDefaultTextStyleTransitionState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _DemoDefaultTextStyleTransitionState
    extends State<DemoDefaultTextStyleTransition>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late TextStyleTween _styleTween;
  late CurvedAnimation _curvedAnimation;
  static const String _title = 'DefaultTextStyleTransition';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _styleTween = TextStyleTween(
      begin: const TextStyle(
          fontSize: 50, color: Colors.blue, fontWeight: FontWeight.w900),
      end: const TextStyle(
          fontSize: 50, color: Colors.red, fontWeight: FontWeight.w100),
    );
    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticInOut,
    );
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
        title: const Text(
          _title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: DefaultTextStyleTransition(
          style: _styleTween.animate(_curvedAnimation),
          child: const Text('Flutter'),
        ),
      ),
    );
  }
}
