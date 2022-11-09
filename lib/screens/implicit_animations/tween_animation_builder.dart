import 'package:flutter/material.dart';

class FifteenthScreen extends StatelessWidget {
  const FifteenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: DemoTweenAnimationBuilder()),
    );
  }
}

class DemoTweenAnimationBuilder extends StatefulWidget {
  const DemoTweenAnimationBuilder({super.key});

  @override
  State<DemoTweenAnimationBuilder> createState() =>
      _DemoTweenAnimationBuilderState();
}

class _DemoTweenAnimationBuilderState extends State<DemoTweenAnimationBuilder> {
  static const String _title = 'Demo TweenAnimationBuilder';
  double targetValue = 48;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          _title,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        const SizedBox(height: 20),
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, double size, Widget? child) {
            return IconButton(
              iconSize: size,
              color: Colors.pink,
              icon: child!,
              onPressed: () {
                setState(() {
                  targetValue = targetValue == 48 ? 96 : 48;
                });
              },
            );
          },
          child: const Icon(Icons.aspect_ratio),
        ),
      ],
    );
  }
}
