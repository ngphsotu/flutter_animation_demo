import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DemoAnimatedAlign(),
    );
  }
}

class DemoAnimatedAlign extends StatefulWidget {
  const DemoAnimatedAlign({super.key});

  @override
  State<DemoAnimatedAlign> createState() => _DemoAnimatedAlignState();
}

class _DemoAnimatedAlignState extends State<DemoAnimatedAlign> {
  static const String _title = 'AnimatedAlign';
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            _title,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: Container(
                width: 250.0,
                height: 250.0,
                color: Colors.red,
                child: AnimatedAlign(
                  alignment:
                      selected ? Alignment.topRight : Alignment.bottomLeft,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: const FlutterLogo(size: 50.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
