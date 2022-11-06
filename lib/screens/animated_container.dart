import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: DemoAnimatedContainer()),
    );
  }
}

class DemoAnimatedContainer extends StatefulWidget {
  const DemoAnimatedContainer({super.key});

  @override
  State<DemoAnimatedContainer> createState() => _DemoAnimatedContainerState();
}

class _DemoAnimatedContainerState extends State<DemoAnimatedContainer> {
  static const String _title = 'AnimatedContainer';
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            _title,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          const SizedBox(height: 20),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                width: selected ? 200 : 100,
                height: selected ? 100 : 200,
                color: selected ? Colors.amber : Colors.pink,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 75),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
