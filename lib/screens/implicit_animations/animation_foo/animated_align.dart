import 'package:flutter/material.dart';

class DemoAnimatedAlign extends StatefulWidget {
  const DemoAnimatedAlign({super.key});

  @override
  State<DemoAnimatedAlign> createState() => _DemoAnimatedAlignState();
}

class _DemoAnimatedAlignState extends State<DemoAnimatedAlign> {
  static const String _title = 'AnimatedAlign';
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            _title,
            style: TextStyle(color: Colors.pink, fontSize: 20),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: Container(
                width: 250.0,
                height: 250.0,
                color: Colors.amber[200],
                child: AnimatedAlign(
                  alignment:
                      selected ? Alignment.topRight : Alignment.bottomLeft,
                  // alignment - Kiểm soát căn chỉnh ngang và dọc tương ứng.
                  duration: const Duration(seconds: 1),
                  // duration - Khoảng thời gian để tạo hoạt ảnh cho các thông số của vùng chứa này.
                  curve: Curves.fastOutSlowIn,
                  // curve - Đường cong áp dụng khi tạo hoạt ảnh cho các tham số của vùng chứa này.
                  child: const FlutterLogo(size: 75),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
