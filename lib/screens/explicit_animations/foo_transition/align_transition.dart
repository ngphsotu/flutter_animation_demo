import 'package:flutter/material.dart';

class DemoAlignTransition extends StatefulWidget {
  const DemoAlignTransition({super.key});

  @override
  State<DemoAlignTransition> createState() => _DemoAlignTransitionState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _DemoAlignTransitionState extends State<DemoAlignTransition>
    with TickerProviderStateMixin {
  // Using `late final` for lazy initialization. See
  // https://dart.dev/null-safety/understanding-null-safety#lazy-initialization.
  static const String _title = 'AlignTransition';

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<AlignmentGeometry> _animation = Tween<AlignmentGeometry>(
    begin: Alignment.bottomLeft,
    end: Alignment.center,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    ),
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
      body: Container(
        color: Colors.white,
        child: AlignTransition(
          alignment: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: FlutterLogo(size: 150),
          ),
        ),
      ),
    );
  }
}
