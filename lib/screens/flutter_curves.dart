import 'package:flutter/material.dart';

import '/widgets/custom_text.dart';
import '/widgets/custom_button.dart';

class FlutterCurvesExample extends StatefulWidget {
  const FlutterCurvesExample({super.key});

  @override
  State<FlutterCurvesExample> createState() => _FlutterCurvesExampleState();
}

class _FlutterCurvesExampleState extends State<FlutterCurvesExample> {
  var _width = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Animation Curves',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CurveDisplay(
                width: _width, curveName: 'Linear', curve: Curves.linear),
            CurveDisplay(
                width: _width,
                curveName: 'Show Middle',
                curve: Curves.slowMiddle),
            CurveDisplay(
                width: _width, curveName: 'Bounce In', curve: Curves.bounceIn),
            CurveDisplay(
                width: _width,
                curveName: 'Bounce Out',
                curve: Curves.bounceOut),
            CurveDisplay(
                width: _width,
                curveName: 'Decelerate',
                curve: Curves.decelerate),
            const SizedBox(height: 20),
            CustomButton(
              label: 'Animate 🔥',
              onTap: () {
                setState(() {
                  _width = 300;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              label: 'Re-set 🔁',
              onTap: () {
                setState(() {
                  _width = 80;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CurveDisplay extends StatelessWidget {
  const CurveDisplay({
    Key? key,
    required double width,
    required this.curveName,
    required this.curve,
  })  : _width = width,
        super(key: key);

  final double _width;
  final String curveName;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(text: curveName),
        AnimatedContainer(
          width: _width,
          height: 20,
          curve: curve,
          duration: const Duration(milliseconds: 700),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
