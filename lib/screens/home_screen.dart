import 'package:flutter/material.dart';

import '/widgets/custom_text.dart';
import '/screens/flutter_curves.dart';
import '/screens/flutter_matrix_four.dart';
import '/screens/flutter_tween_animation.dart';
import '/screens/demo_implicit_tanimations.dart';

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
              text: 'Flutter Implicit Animated',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => DemoImplicitAnimation())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '👉🏻', size: 30),
            title: const CustomText(
              text: 'Flutter Matrix4',
              size: 18,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const FlutterMatrixFourExample())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '👉🏻', size: 30),
            title: const CustomText(
              text: 'Flutter Animation Curves',
              size: 18,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const FlutterCurvesExample())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '👉🏻', size: 30),
            title: const CustomText(
              text: 'Flutter Tween Animations',
              size: 18,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const TweenAnimationExample())),
          ),
          const Divider(),
        ],
      ),

      // Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => const FirstScreen()),
      //       );
      //     },
      //     child: const Text('AnimatedContainer'),
      //   ),
      // ),
    );
  }
}
