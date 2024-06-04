import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
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
        title: const Text('Padding & Margin'),
        backgroundColor: Colors.lightBlue.shade200,
      ),
      body: Container(
        color: Colors.red,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(30),
        child: const Text(
          'Hello World!',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
