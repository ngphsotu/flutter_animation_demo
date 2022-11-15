import 'package:flutter/material.dart';

class DemoAnimatedPositioned extends StatefulWidget {
  const DemoAnimatedPositioned({super.key});

  @override
  State<DemoAnimatedPositioned> createState() => _DemoAnimatedPositionedState();
}

class _DemoAnimatedPositionedState extends State<DemoAnimatedPositioned> {
  static const String _title = 'AnimatedPositioned';
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
          Center(
            child: SizedBox(
              width: 200,
              height: 350,
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    width: _selected ? 200 : 50,
                    height: _selected ? 50 : 200,
                    top: _selected ? 50 : 150,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selected = !_selected;
                        });
                      },
                      child: Container(
                        color: Colors.pink,
                        child: const Center(
                          child: Text(
                            'Tap me',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
