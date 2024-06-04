
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradiantContainer(),
      ),
    ),
  );
}

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 38, 158, 158),
            Color(0xff0c61a1),
          ],
          center: Alignment.bottomCenter,
          radius: BorderSide.strokeAlignOutside,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
