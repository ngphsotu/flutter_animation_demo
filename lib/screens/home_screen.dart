import 'package:flutter/material.dart';

import '/widgets/custom_text.dart';

import 'demo_explicit_animations.dart';
import 'demo_implicit_animations.dart';

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
          'Flutter Animation',
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
          // ListTile(
          //   leading: const CustomText(text: '👉🏻', size: 30),
          //   title: const CustomText(
          //     text: 'Flutter Matrix4',
          //     size: 18,
          //   ),
          //   onTap: () => Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (_) => const FlutterMatrixFourExample())),
          // ),
          // const Divider(),
          // ListTile(
          //   leading: const CustomText(text: '👉🏻', size: 30),
          //   title: const CustomText(
          //     text: 'Flutter Animation Curves',
          //     size: 18,
          //   ),
          //   onTap: () => Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (_) => const FlutterCurvesExample())),
          // ),
          // const Divider(),
        ],
      ),
    );
  }
}
