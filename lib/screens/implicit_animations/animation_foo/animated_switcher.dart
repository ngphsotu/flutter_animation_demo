import 'package:flutter/material.dart';

class DemoAnimatedSwitcher extends StatefulWidget {
  const DemoAnimatedSwitcher({super.key});

  @override
  State<DemoAnimatedSwitcher> createState() => _DemoAnimatedSwitcherState();
}

class _DemoAnimatedSwitcherState extends State<DemoAnimatedSwitcher> {
  static const String _title = 'AnimatedSwitcher';
  int _count = 0;

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
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                '$_count',
                key: ValueKey(_count),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            TextButton(
              child: const Text(
                'Increment',
                style: TextStyle(color: Colors.pink, fontSize: 15),
              ),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
