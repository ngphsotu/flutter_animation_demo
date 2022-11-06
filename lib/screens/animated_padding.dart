import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DemoAnimatedPadding(),
    );
  }
}

class DemoAnimatedPadding extends StatefulWidget {
  const DemoAnimatedPadding({super.key});

  @override
  State<DemoAnimatedPadding> createState() => _DemoAnimatedPaddingState();
}

class _DemoAnimatedPaddingState extends State<DemoAnimatedPadding> {
  static const String _title = 'AnimatedPadding';
  double padValue = 0.0;

  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

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
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.pink,
          ),
        ),
        const SizedBox(height: 10),
        Text('Padding: $padValue'),
        const SizedBox(height: 20),
        ElevatedButton(
          child: const Text('Change padding'),
          onPressed: () {
            _updatePadding(padValue == 0 ? 100 : 0);
          },
        ),
      ],
    );
  }
}
