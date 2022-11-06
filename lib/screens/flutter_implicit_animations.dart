import 'dart:math';
import 'package:flutter/material.dart';

import '/widgets/custom_button.dart';

class ImplicitAnimationsExample extends StatefulWidget {
  const ImplicitAnimationsExample({super.key});

  @override
  State<ImplicitAnimationsExample> createState() =>
      _ImplicitAnimationsExampleState();
}

class _ImplicitAnimationsExampleState extends State<ImplicitAnimationsExample> {
  var _width = 120.0;
  var _height = 140.0;
  var _opacity = 0.0;
  var _angle = 0.0;
  final _animationDuration = const Duration(milliseconds: 400);
  late Color _color;
  late double _margin;
  late double _borderRadius;

  double _randomValue({int max = 80}) {
    return Random().nextDouble() * max;
  }

  Color randomColor() {
    return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
  }

  @override
  void initState() {
    super.initState();
    _color = randomColor();
    _margin = _randomValue();
    _borderRadius = _randomValue();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Implicit Animations',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(milliseconds: 600),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  width: _width,
                  height: _height,
                  margin: EdgeInsets.all(_margin),
                  duration: _animationDuration,
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..rotateZ(_angle),
                  transformAlignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: _color,
                    borderRadius: BorderRadius.circular(_borderRadius),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // ------------------------------
          // Button
          CustomButton(
            label: 'Change Look 👀',
            onTap: () {
              setState(() {
                _color = randomColor();
                _margin = _randomValue();
                _borderRadius = _randomValue();
              });
            },
          ),
          const SizedBox(height: 20),
          // ------------------------------
          // Button
          CustomButton(
            label: 'Change Size 🤏🏻',
            onTap: () {
              setState(() {
                _width = _randomValue(max: 200);
                _height = _randomValue(max: 300);
              });
            },
          ),
          const SizedBox(height: 20),
          // ------------------------------
          // Button
          CustomButton(
            label: 'Rotate 🔁',
            onTap: () {
              setState(() {
                _angle = _randomValue();
              });
            },
          ),
        ],
      ),
    );
  }
}
