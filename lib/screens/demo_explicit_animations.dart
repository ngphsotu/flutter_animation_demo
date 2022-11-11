import 'package:flutter/material.dart';

import '/widgets/custom_text.dart';
import 'explicit_animations/animated_widget.dart';
import 'explicit_animations/animated_builder.dart';
import 'explicit_animations/foo_transition/fade_transition.dart';
import 'explicit_animations/foo_transition/size_transition.dart';
import 'explicit_animations/foo_transition/align_transition.dart';
import 'explicit_animations/foo_transition/slide_transition.dart';
import 'explicit_animations/foo_transition/scale_transition.dart';
import 'explicit_animations/foo_transition/rotation_transition.dart';
import 'explicit_animations/foo_transition/positioned_transition.dart';
import 'explicit_animations/foo_transition/decorate_box_transition.dart';
import 'explicit_animations/foo_transition/default_text_style_transition.dart';
import 'explicit_animations/foo_transition/relative_positioned_transition.dart';

class DemoExplicitAnimations extends StatelessWidget {
  static const String _title = 'Explicit Animations';
  const DemoExplicitAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(_title, style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: [
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'SizeTransition Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const DemoAlignTransition())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'DecoratedBoxTransition Example',
              size: 18,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const DemoDecoratedBoxTransition())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'DefaultTextStyleTransition Example',
              size: 18,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const DemoDefaultTextStyleTransition())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'FadeTransition Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const DemoFadeTransition())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'PositionedTransition Example',
              size: 18,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const DemoPositionedTransition())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'RelativePositionedTransition Example',
              size: 18,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const DemoRelativePositionedTransition())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'RotationTransition Example',
              size: 18,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const DemoRotationTransition())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'ScaleTransition Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const DemoScaleTransition())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'SizeTransition Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const DemoSizeTransition())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'SlideTransition Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const DemoSlideTransition())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'AnimatedWidget Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const DemoAnimatedWidget())),
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(text: '❤️', size: 30),
            title: const CustomText(
              text: 'AnimatedBuilder Example',
              size: 18,
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const DemoAnimatedBuilder())),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
