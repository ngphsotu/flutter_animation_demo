import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'implicit_animations/tween_animation_builder.dart';
import 'implicit_animations/animation_foo/animated_icon.dart';
import 'implicit_animations/animation_foo/animated_size.dart';
import 'implicit_animations/animation_foo/animated_slide.dart';
import 'implicit_animations/animation_foo/animated_align.dart';
import 'implicit_animations/animation_foo/animated_scale.dart';
import 'implicit_animations/animation_foo/animated_padding.dart';
import 'implicit_animations/animation_foo/animated_opacity.dart';
import 'implicit_animations/animation_foo/animated_rotation.dart';
import 'implicit_animations/animation_foo/animated_switcher.dart';
import 'implicit_animations/animation_foo/animated_container.dart';
import 'implicit_animations/animation_foo/animated_cross_fade.dart';
import 'implicit_animations/animation_foo/animated_positioned.dart';
import 'implicit_animations/animation_foo/animated_physical_model.dart';
import 'implicit_animations/animation_foo/animated_default_textstyle.dart';

class DemoImplicitAnimations extends StatelessWidget {
  static const String _title = 'Implicit Animations';
  final _controller = PageController();

  DemoImplicitAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(_title, style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 700,
            child: PageView(
              controller: _controller,
              children: const [
                DemoAnimatedAlign(),
                DemoAnimatedContainer(),
                DemoAnimatedCrossFade(),
                DemoAnimatedDefaultTextStyle(),
                DemoAnimatedIcon(),
                DemoAnimatedOpacity(),
                DemoAnimatedPadding(),
                DemoAnimatedPhysicalModel(),
                DemoAnimatedPositioned(),
                DemoAnimatedRotation(),
                DemoAnimatedScale(),
                DemoAnimatedSized(),
                DemoAnimatedSlide(),
                DemoAnimatedSwitcher(),
                DemoTweenAnimationBuilder(),
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 15,
            effect: WormEffect(
              dotColor: Colors.pink.shade100,
              dotWidth: 15,
              spacing: 10,
              dotHeight: 15,
              activeDotColor: Colors.pink,
              //verticalOffset: 50,
            ),
          ),
        ],
      ),
    );
  }
}
