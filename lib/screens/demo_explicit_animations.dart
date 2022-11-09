import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';
import 'explicit_animations/animated_icon.dart';
import 'explicit_animations/animated_widget.dart';
import 'explicit_animations/animated_builder.dart';
import 'explicit_animations/animated_controller.dart';

class DemoExplicitAnimations extends StatelessWidget {
  const DemoExplicitAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Explicit Animations',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          ListTile(
            leading: const CustomText(text: '🤞🏻', size: 30),
            title: const CustomText(
              text: 'AnimatedIcon Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const FirstScreen())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '🤞🏻', size: 30),
            title: const CustomText(
              text: 'AnimatedController Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const SecondScreen())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '🤞🏻', size: 30),
            title: const CustomText(
              text: 'AnimatedWidget Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ThirdScreen())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '🤞🏻', size: 30),
            title: const CustomText(
              text: 'AnimatedIcon Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const FourthScreen())),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
