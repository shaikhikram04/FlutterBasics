import 'dart:async';

import 'package:flutter/material.dart';

class HeartAnimation extends StatefulWidget {
  const HeartAnimation({super.key});

  @override
  State<HeartAnimation> createState() => _HeartAnimationState();
}

class _HeartAnimationState extends State<HeartAnimation> {
  bool _showHeart = false;
  double _scale = 1.0;

  void _onButtonPressed() {
    setState(() {
      _showHeart = true;
    });

    // First scale down after some delay
    Timer(const Duration(milliseconds: 100), () {
      setState(() {
        _scale = 1.1; // Scale back to normal
      });
    });

    // Hide the heart icon after 1 second
    Timer(const Duration(milliseconds: 500), () {
      setState(() {
        _showHeart = false;
        _scale = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heart Animation Example'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ElevatedButton(
              onPressed: _onButtonPressed,
              child: const Text('Show Heart'),
            ),
            // Heart Icon with scaling animation
            Visibility(
              visible: _showHeart,
              child: AnimatedScale(
                scale: _scale,
                duration: const Duration(
                    milliseconds: 500), // Animation duration for scaling
                curve: Curves.fastOutSlowIn, // Curve for smooth scaling
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
