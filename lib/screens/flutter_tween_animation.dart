// import 'package:flutter/material.dart';

// import '/widgets/custom_text.dart';

// class TweenAnimationExample extends StatefulWidget {
//   const TweenAnimationExample({super.key});

//   @override
//   State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
// }

// class _TweenAnimationExampleState extends State<TweenAnimationExample> {
//   var _angle = 0.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         iconTheme: const IconThemeData(color: Colors.black),
//         title: const Text(
//           'Transform Widget',
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TweenAnimationBuilder<double>(
//               tween: Tween(begin: 0, end: _angle),
//               duration: const Duration(seconds: 1),
//               child: const CustomText(
//                 text: '🍑',
//                 size: 120,
//               ),
//               builder: (context, value, child) {
//                 return Transform.rotate(
//                   angle: value,
//                   child: child,
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             Slider.adaptive(
//                 value: _angle,
//                 min: 0,
//                 max: 180,
//                 onChanged: (value) {
//                   setState(() {
//                     _angle = value;
//                   });
//                 })
//           ],
//         ),
//       ),
//     );
//   }
// }
