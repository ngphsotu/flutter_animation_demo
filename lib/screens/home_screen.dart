import 'package:flutter/material.dart';

import '/widgets/custom_text.dart';
import 'explicit_animations.dart';
import 'implicit_animations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Flutter Animations',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          ListTile(
            leading: const CustomText(text: '👉🏻', size: 30),
            title: const CustomText(
              text: 'Flutter Implicit Animations',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => DemoImplicitAnimations())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '👉🏻', size: 30),
            title: const CustomText(
              text: 'Flutter Explicit Animations',
              size: 18,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const DemoExplicitAnimations())),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
