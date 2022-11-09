import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DemoAnimatedFractionallySizedBox();
  }
}

class DemoAnimatedFractionallySizedBox extends StatefulWidget {
  const DemoAnimatedFractionallySizedBox({super.key});

  @override
  State<DemoAnimatedFractionallySizedBox> createState() =>
      _DemoAnimatedFractionallySizedBoxState();
}

class _DemoAnimatedFractionallySizedBoxState
    extends State<DemoAnimatedFractionallySizedBox> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          setState(() {
            _selected = !_selected;
          });
        },
        child: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Container(
              color: Colors.red,
              child: AnimatedFractionallySizedBox(
                widthFactor: _selected ? 0.25 : 0.75,
                heightFactor: _selected ? 0.75 : 0.25,
                alignment:
                    _selected ? Alignment.topLeft : Alignment.bottomRight,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  color: Colors.yellow,
                  child: const FlutterLogo(size: 75),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
