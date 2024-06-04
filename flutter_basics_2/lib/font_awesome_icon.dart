import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget'),
        backgroundColor: Colors.amber,
      ),
      body:
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.bike_scooter,
                size: 70,
                color: Colors.redAccent,
              ),
              FaIcon(FontAwesomeIcons.amazon, size: 70,),
              FaIcon(FontAwesomeIcons.apple, size: 70,),
              FaIcon(FontAwesomeIcons.google, size: 70,)
            ],
          ),
        ),
    );
  }
}
