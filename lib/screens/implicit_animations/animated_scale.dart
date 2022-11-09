import 'package:flutter/material.dart';

class EleventhScreen extends StatelessWidget {
  const EleventhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: DemoAnimatedScale()),
    );
  }
}

class DemoAnimatedScale extends StatefulWidget {
  const DemoAnimatedScale({super.key});

  @override
  State<DemoAnimatedScale> createState() => _DemoAnimatedScaleState();
}

class _DemoAnimatedScaleState extends State<DemoAnimatedScale> {
  double scale = 1.0;
  static const String _title = 'AnimatedScale';

  void _changeScale() {
    setState(() {
      scale = scale == 1 ? 5 : 1;
    });
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
              child: AnimatedScale(
                scale: scale,
                duration: const Duration(seconds: 2),
                child: const FlutterLogo(),
              ),
            ),
            TextButton(
              onPressed: _changeScale,
              child: const Text(
                'Scale Logo',
                style: TextStyle(fontSize: 15, color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
