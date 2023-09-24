import 'package:flutter/material.dart';
import 'dart:math' show pi;

class BoxRotateScreen extends StatefulWidget {
  const BoxRotateScreen({super.key});

  @override
  State<BoxRotateScreen> createState() => _BoxRotateScreenState();
}

class _BoxRotateScreenState extends State<BoxRotateScreen>
    with SingleTickerProviderStateMixin {
  bool tapped = false;
  late AnimationController _controller;
  late Animation _animation;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween<double>(begin: 0, end: pi /2).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: const Text("Box Rotate Animation"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..rotateZ(_animation.value),
              // transform: Matrix4.identity().scale(0, ),
              child: GestureDetector(
                onTap: () {
                  _controller.reset();
                  _controller.forward();
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 7,
                            spreadRadius: 2,
                            offset: Offset(0, 1))
                      ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
