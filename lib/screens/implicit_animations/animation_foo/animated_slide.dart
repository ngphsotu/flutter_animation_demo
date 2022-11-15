import 'package:flutter/material.dart';

class DemoAnimatedSlide extends StatefulWidget {
  const DemoAnimatedSlide({super.key});

  @override
  State<DemoAnimatedSlide> createState() => _DemoAnimatedSlideState();
}

class _DemoAnimatedSlideState extends State<DemoAnimatedSlide> {
  static const String _title = 'AnimatedSlide';
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              _title,
              style: TextStyle(color: Colors.pink, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(50),
                      child: AnimatedSlide(
                        offset: _offset,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        child: const FlutterLogo(size: 70),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text('Y', style: textTheme.bodyMedium),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Slider(
                            min: -5,
                            max: 5,
                            value: _offset.dy,
                            onChanged: (double value) {
                              setState(() {
                                _offset = Offset(_offset.dx, value);
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('X', style: textTheme.bodyMedium),
                Expanded(
                  child: Slider(
                    min: -5,
                    max: 5,
                    value: _offset.dx,
                    onChanged: (double value) {
                      setState(() {
                        _offset = Offset(value, _offset.dy);
                      });
                    },
                  ),
                ),
                const SizedBox(width: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
