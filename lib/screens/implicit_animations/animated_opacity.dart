import 'package:flutter/material.dart';

class SixthScreen extends StatelessWidget {
  const SixthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DemoAnimatedOpacity(),
    );
  }
}

class DemoAnimatedOpacity extends StatefulWidget {
  const DemoAnimatedOpacity({super.key});

  @override
  State<DemoAnimatedOpacity> createState() => DemoAnimatedOpacityState();
}

class DemoAnimatedOpacityState extends State<DemoAnimatedOpacity> {
  static const String _title = 'AnimatedOpacity';
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0);
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
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 3),
              child: const FlutterLogo(size: 300),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: _changeOpacity,
              child: const Text(
                'Fade Logo',
                style: TextStyle(color: Colors.pink, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
