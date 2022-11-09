import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: DemoAnimatedDefaultTextStyle()),
    );
  }
}

class DemoAnimatedDefaultTextStyle extends StatefulWidget {
  const DemoAnimatedDefaultTextStyle({super.key});

  @override
  State<DemoAnimatedDefaultTextStyle> createState() =>
      _DemoAnimatedDefaultTextStyleState();
}

class _DemoAnimatedDefaultTextStyleState
    extends State<DemoAnimatedDefaultTextStyle> {
  bool _selected = true;
  double _fontSize = 50;
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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
                  _color = _selected ? Colors.blue : Colors.red;
                  _selected = !_selected;
                });
              },
              child: const Text('Switch', style: TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}
