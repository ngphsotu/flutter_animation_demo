import 'package:flutter/material.dart';

class TenthScreen extends StatelessWidget {
  const TenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: DemoAnimatedRotation()),
    );
  }
}

class DemoAnimatedRotation extends StatefulWidget {
  const DemoAnimatedRotation({super.key});

  @override
  State<DemoAnimatedRotation> createState() => _DemoAnimatedRotationState();
}

class _DemoAnimatedRotationState extends State<DemoAnimatedRotation> {
  double _turns = 0;
  static const String _title = 'AnimatedRotation';

  void _changeRotation() {
    setState(() => _turns += 1 / 8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              _title,
              style: TextStyle(color: Colors.pink, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: _turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 200,
                ),
              ),
            ),
            TextButton(
              onPressed: _changeRotation,
              child: const Text(
                'Rotate Logo',
                style: TextStyle(fontSize: 15, color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
