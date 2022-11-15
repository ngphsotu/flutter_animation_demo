import 'package:flutter/material.dart';

class DemoAnimatedContainer extends StatefulWidget {
  const DemoAnimatedContainer({super.key});

  @override
  State<DemoAnimatedContainer> createState() => _DemoAnimatedContainerState();
}

class _DemoAnimatedContainerState extends State<DemoAnimatedContainer> {
  static const String _title = 'AnimatedContainer';
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            _title,
            style: TextStyle(color: Colors.pink, fontSize: 20),
          ),
          const SizedBox(height: 20),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selected = !_selected;
                });
              },
              child: AnimatedContainer(
                width: _selected ? 200 : 100,
                height: _selected ? 100 : 200,
                color: _selected ? Colors.yellow : Colors.orange,
                alignment: _selected
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
