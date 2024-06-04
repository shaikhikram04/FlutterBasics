import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('InkWell Widget'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            stdout.write('Container Clicked');
          },
          onLongPress: () {
            stdout.write('Container Long Pressed');
          },
          onDoubleTap: () {
            stdout.write('Container Double Tap');
          },
          child: Container(
            width: 200,
            height: 200,
            color: const Color.fromARGB(255, 246, 186, 24),
            child: Center(
                child: InkWell(
                  onTap: () {
                    stdout.write('Text Clicked');
                  },
                  onLongPress: () {
                    stdout.write('Text Long Pressed');
                  },
                  onDoubleTap: () {
                    stdout.write('Text Double Tap');
                  },
                  child: const Text(
                  'Click Me',
                  style: TextStyle(
                    fontSize: 30,
                    backgroundColor: Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
