import 'package:flutter/material.dart';

class ControlledAnimationButtonScreen extends StatelessWidget {
  const ControlledAnimationButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: ControlledAnimatedButton(),
      ),
    );
  }
}

class ControlledAnimatedButton extends StatefulWidget {
  const ControlledAnimatedButton({Key? key}) : super(key: key);

  @override
  _ControlledAnimatedButtonState createState() =>
      _ControlledAnimatedButtonState();
}

class _ControlledAnimatedButtonState extends State<ControlledAnimatedButton>
    with TickerProviderStateMixin {
  final _durationAnimation = const Duration(milliseconds: 500);

  late AnimationController _controller;
  late Animation<Size?> _sizeAnimation;
  late Animation<BorderRadius?> _borderAnimation;
  late Animation<Alignment?> _aligmentAnimation;

  void _toggle() {
    if (_controller.value == 0) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: _durationAnimation,
    );

    _sizeAnimation = SizeTween(
      begin: Size(50, 50),
      end: Size(100, 50),
    ).animate(_controller);

    _borderAnimation = Tween(
      begin: const BorderRadius.all(Radius.circular(100)),
      end: const BorderRadius.all(Radius.zero),
    ).animate(_controller);

    _aligmentAnimation = AlignmentTween(
      begin: Alignment.bottomRight,
      end: Alignment.topCenter,
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          alignment: _aligmentAnimation.value,
          child: GestureDetector(
            onTap: _toggle,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: _borderAnimation.value,
                color: Colors.amber,
              ),
              width: _sizeAnimation.value?.width,
              height: _sizeAnimation.value?.height,
            ),
          ),
        );
      },
    );
  }
}
