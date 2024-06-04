import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ux/QuickCalc/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const IntroScreen(),));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrange,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.amberAccent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/cals.png', height: 280),
              const Text(
                'QuickCalc',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono',
                  color: Color.fromARGB(255, 128, 46, 5),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
