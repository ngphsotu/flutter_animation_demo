import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'animated_container.dart';
import '/screens/animated_size.dart';
import '/screens/animated_align.dart';
import 'package:flutter/material.dart';
import '/screens/animated_opacity.dart';
import '/screens/animated_padding.dart';
import '/screens/animated_positioned.dart';
import '/screens/tween_animation_builder.dart';

class DemoImplicitAnimation extends StatelessWidget {
  final _controller = PageController();

  DemoImplicitAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Implicit Animation Examples',
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
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 7,
            effect: WormEffect(
              activeDotColor: Colors.pink,
              dotColor: Colors.pink.shade100,
              dotHeight: 20,
              dotWidth: 20,
              spacing: 20,
              //verticalOffset: 50,
            ),
          ),
        ],
      ),
    );
  }
}
