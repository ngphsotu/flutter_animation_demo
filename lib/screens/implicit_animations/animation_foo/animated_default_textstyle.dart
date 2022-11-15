import 'package:flutter/material.dart';

class DemoAnimatedDefaultTextStyle extends StatefulWidget {
  const DemoAnimatedDefaultTextStyle({super.key});

  @override
  State<DemoAnimatedDefaultTextStyle> createState() =>
      _DemoAnimatedDefaultTextStyleState();
}

class _DemoAnimatedDefaultTextStyleState
    extends State<DemoAnimatedDefaultTextStyle> {
  static const String _title = 'AnimatedDefaultTextStyle';
  bool _selected = true;
  double _fontSize = 50;
  Color _color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              _title,
              style: TextStyle(color: Colors.pink, fontSize: 20),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 500),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: const Text('Flutter'),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _fontSize = _selected ? 100 : 50;
                  _color = _selected ? Colors.blue : Colors.amber;
                  _selected = !_selected;
                });
              },
              child: const Text(
                'Switch',
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            )
          ],
        ),
      ),
    );
  }
}
