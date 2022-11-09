import 'package:flutter/material.dart';

class ThirteenScreen extends StatelessWidget {
  const ThirteenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DemoAnimatedSlide(),
    );
  }
}

class DemoAnimatedSlide extends StatefulWidget {
  const DemoAnimatedSlide({super.key});

  @override
  State<DemoAnimatedSlide> createState() => _DemoAnimatedSlideState();
}

class _DemoAnimatedSlideState extends State<DemoAnimatedSlide> {
  Offset offset = Offset.zero;
  static const String _title = 'AnimatedSlide';

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
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(50),
                      child: AnimatedSlide(
                        offset: offset,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        child: const FlutterLogo(size: 70),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text('Y', style: textTheme.bodyMedium),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Slider(
                            min: -5,
                            max: 5,
                            value: offset.dy,
                            onChanged: (double value) {
                              setState(() {
                                offset = Offset(offset.dx, value);
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
              children: <Widget>[
                Text('X', style: textTheme.bodyMedium),
                Expanded(
                  child: Slider(
                    min: -5,
                    max: 5,
                    value: offset.dx,
                    onChanged: (double value) {
                      setState(() {
                        offset = Offset(value, offset.dy);
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
