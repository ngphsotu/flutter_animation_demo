import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DemoAnimatedCrossFade(),
    );
  }
}

class DemoAnimatedCrossFade extends StatefulWidget {
  const DemoAnimatedCrossFade({super.key});

  @override
  State<DemoAnimatedCrossFade> createState() => _DemoAnimatedCrossFadeState();
}

class _DemoAnimatedCrossFadeState extends State<DemoAnimatedCrossFade> {
  bool _isFormSubmitted = false;
  static const String _title = 'AnimatedCrossFade';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              _title,
              style: TextStyle(color: Colors.pink, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(30),
              child: AnimatedCrossFade(
                firstChild: Form(
                    child: Column(
                  children: [
                    TextFormField(),
                    const SizedBox(height: 10),
                    TextFormField(),
                    const SizedBox(height: 10),
                    TextFormField(),
                    const SizedBox(height: 10),
                    TextButton(
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 15, color: Colors.pink),
                      ),
                      onPressed: () {
                        setState(() {
                          _isFormSubmitted = true;
                        });
                      },
                    ),
                  ],
                )),
                secondChild: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'Form has been submitted',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                crossFadeState: _isFormSubmitted
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(seconds: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
