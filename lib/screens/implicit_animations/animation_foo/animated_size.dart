import 'package:flutter/material.dart';

class DemoAnimatedSized extends StatefulWidget {
  const DemoAnimatedSized({super.key});

  @override
  State<DemoAnimatedSized> createState() => _DemoAnimatedSizedState();
}

class _DemoAnimatedSizedState extends State<DemoAnimatedSized> {
  static const String _title = 'AnimatedSize';
  double _size = 50;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 250 : 100;
      _large = !_large;
    });
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
              onTap: () => _updateSize(),
              child: Container(
                color: Colors.amber[200],
                child: AnimatedSize(
                  curve: Curves.easeIn,
                  duration: const Duration(seconds: 1),
                  child: FlutterLogo(size: _size),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
