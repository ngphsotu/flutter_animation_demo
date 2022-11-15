import 'package:flutter/material.dart';

class DemoAnimatedIcon extends StatefulWidget {
  const DemoAnimatedIcon({super.key});

  @override
  State<DemoAnimatedIcon> createState() => _DemoAnimatedIconState();
}

class _DemoAnimatedIconState extends State<DemoAnimatedIcon>
    with TickerProviderStateMixin {
  static const String _title = 'AnimatedIcon';
  bool _selected = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            _title,
            style: TextStyle(color: Colors.pink, fontSize: 20),
          ),
          const SizedBox(height: 20),
          Center(
            child: GestureDetector(
              onTap: () {
                if (_selected == false) {
                  _controller.forward();
                  _selected = true;
                } else {
                  _controller.reverse();
                  _selected = false;
                }
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _controller,
                size: 150,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
