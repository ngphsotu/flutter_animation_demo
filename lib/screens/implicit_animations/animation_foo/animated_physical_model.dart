import 'package:flutter/material.dart';

class EighthScreen extends StatelessWidget {
  const EighthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DemoAnimatedPhysicalModel();
  }
}

class DemoAnimatedPhysicalModel extends StatefulWidget {
  const DemoAnimatedPhysicalModel({super.key});

  @override
  State<DemoAnimatedPhysicalModel> createState() =>
      _DemoAnimatedPhysicalModelState();
}

class _DemoAnimatedPhysicalModelState extends State<DemoAnimatedPhysicalModel> {
  bool _isFlat = true;
  static const String _title = 'AnimatedPhysicalModel';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            _title,
            style: TextStyle(color: Colors.pink, fontSize: 20),
          ),
          const SizedBox(height: 20),
          AnimatedPhysicalModel(
            shape: BoxShape.rectangle,
            elevation: _isFlat ? 0 : 6,
            color: Colors.white,
            shadowColor: Colors.black,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            child: const SizedBox(
              height: 150,
              width: 150,
              child: Icon(Icons.android_outlined),
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              setState(() {
                _isFlat = !_isFlat;
              });
            },
            child: const Text(
              'Click',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
