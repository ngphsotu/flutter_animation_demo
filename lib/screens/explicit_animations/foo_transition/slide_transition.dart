import 'package:flutter/material.dart';

class DemoSlideTransition extends StatefulWidget {
  const DemoSlideTransition({super.key});

  @override
  State<DemoSlideTransition> createState() => _DemoSlideTransitionState();
}

class _DemoSlideTransitionState extends State<DemoSlideTransition>
    with SingleTickerProviderStateMixin {
  static const String _title = 'SlideTransition';

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

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
        child: SlideTransition(
          position: _offsetAnimation,
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: FlutterLogo(size: 150),
          ),
        ),
      ),
    );
  }
}
