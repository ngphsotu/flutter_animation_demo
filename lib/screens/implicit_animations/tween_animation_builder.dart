import 'package:flutter/material.dart';

class DemoTweenAnimationBuilder extends StatefulWidget {
  const DemoTweenAnimationBuilder({super.key});

  @override
  State<DemoTweenAnimationBuilder> createState() =>
      _DemoTweenAnimationBuilderState();
}

class _DemoTweenAnimationBuilderState extends State<DemoTweenAnimationBuilder> {
  static const String _title = 'TweenAnimationBuilder';
  double targetValue = 50;

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
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: targetValue),
              duration: const Duration(seconds: 1),
              builder: (BuildContext context, double size, Widget? child) {
                return IconButton(
                  iconSize: size,
                  color: Colors.amber,
                  icon: child!,
                  onPressed: () {
                    setState(() {
                      targetValue = targetValue == 50 ? 200 : 50;
                    });
                  },
                );
              },
              child: const Icon(Icons.aspect_ratio),
            ),
          ],
        ),
      ),
    );
  }
}
