import 'package:flutter/material.dart';

class TwelfthScreen extends StatelessWidget {
  const TwelfthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DemoAnimatedSized(),
    );
  }
}

class DemoAnimatedSized extends StatefulWidget {
  const DemoAnimatedSized({super.key});

  @override
  State<DemoAnimatedSized> createState() => _DemoAnimatedSizedState();
}

class _DemoAnimatedSizedState extends State<DemoAnimatedSized> {
  static const String _title = 'AnimatedSize';
  double _size = 50.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 250.0 : 100.0;
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
