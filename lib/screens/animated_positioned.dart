import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DemoAnimatedPositioned(),
    );
  }
}

class DemoAnimatedPositioned extends StatefulWidget {
  const DemoAnimatedPositioned({super.key});

  @override
  State<DemoAnimatedPositioned> createState() => _DemoAnimatedPositionedState();
}

class _DemoAnimatedPositionedState extends State<DemoAnimatedPositioned> {
  static const String _title = 'AnimatedPositioned';
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          _title,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        Center(
          child: SizedBox(
            width: 200,
            height: 350,
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  width: selected ? 200.0 : 50.0,
                  height: selected ? 50.0 : 200.0,
                  top: selected ? 50.0 : 150.0,
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Container(
                      color: Colors.pink,
                      child: const Center(child: Text('Tap me')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
