import 'package:flutter/material.dart';

class DemoRelativePositionedTransition extends StatefulWidget {
  const DemoRelativePositionedTransition({super.key});

  @override
  State<DemoRelativePositionedTransition> createState() =>
      _DemoRelativePositionedTransitionState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _DemoRelativePositionedTransitionState
    extends State<DemoRelativePositionedTransition>
    with TickerProviderStateMixin {
  static const String _title = 'RelativePositionedTransition';
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 100;
    const double bigLogo = 200;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          _title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final Size biggest = constraints.biggest;
          return Stack(
            children: <Widget>[
              RelativePositionedTransition(
                size: biggest,
                rect: RectTween(
                  begin: const Rect.fromLTWH(0, 0, bigLogo, bigLogo),
                  end: Rect.fromLTWH(biggest.width - smallLogo,
                      biggest.height - smallLogo, smallLogo, smallLogo),
                ).animate(CurvedAnimation(
                  parent: _controller,
                  curve: Curves.elasticInOut,
                )),
                child: const Padding(
                    padding: EdgeInsets.all(8), child: FlutterLogo()),
              ),
            ],
          );
        },
      ),
    );
  }
}
