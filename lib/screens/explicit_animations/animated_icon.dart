import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DemoAnimatedIcon(),
    );
  }
}

class DemoAnimatedIcon extends StatefulWidget {
  const DemoAnimatedIcon({super.key});

  @override
  State<DemoAnimatedIcon> createState() => _DemoAnimatedIconState();
}

class _DemoAnimatedIconState extends State<DemoAnimatedIcon>
    with TickerProviderStateMixin {
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'AnimatedIcon Examples',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
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
    );
  }
}