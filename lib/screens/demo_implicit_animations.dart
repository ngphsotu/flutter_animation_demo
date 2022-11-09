import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'implicit_animations/animated_container.dart';
import 'implicit_animations/animated_cross_fade.dart';
import 'implicit_animations/animated_size.dart';
import 'implicit_animations/animated_slide.dart';
import 'implicit_animations/animated_align.dart';
import 'implicit_animations/animated_scale.dart';
import 'implicit_animations/animated_physical_model.dart';
import 'implicit_animations/animated_opacity.dart';
import 'implicit_animations/animated_padding.dart';
import 'implicit_animations/animated_switcher.dart';
import 'implicit_animations/animated_rotation.dart';
import 'implicit_animations/animated_positioned.dart';
import 'implicit_animations/tween_animation_builder.dart';
import 'implicit_animations/animated_default_textstyle.dart';
import 'implicit_animations/animated_fractionally_sizedbox.dart';

class DemoImplicitAnimations extends StatelessWidget {
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
        title: const Text(
          'Implicit Animations',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 700,
            child: PageView(
              controller: _controller,
              children: const [
                FirstScreen(),
                SecondScreen(),
                ThirdScreen(),
                FourthScreen(),
                FifthScreen(),
                SixthScreen(),
                SeventhScreen(),
                EighthScreen(),
                NinthScreen(),
                TenthScreen(),
                EleventhScreen(),
                TwelfthScreen(),
                ThirteenScreen(),
                FourteenthScreen(),
                FifteenthScreen(),
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 15,
            effect: WormEffect(
              activeDotColor: Colors.pink,
              dotColor: Colors.pink.shade100,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 10,
              //verticalOffset: 50,
            ),
          ),
        ],
      ),
    );
  }
}
