import 'dart:core';

import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatelessWidget {
  const AnimatedContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Foo Animation',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<double> _width = [
    100.0,
    150.0,
    180.0,
    150.0,
    254.0,
    110.0,
    345.0,
    80.0
  ];
  final List<double> _height = [
    200.0,
    190.0,
    100.5,
    256.0,
    400.0,
    349.0,
    100.0,
    275.0
  ];
  var _index = 0;
  final _containerBgColor = [
    Colors.redAccent,
    Colors.teal,
    Colors.yellow,
    Colors.indigo,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.amberAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Foo Animation',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              decoration: BoxDecoration(
                color: _containerBgColor[_index],
                borderRadius: BorderRadius.circular(15),
              ),
              duration: const Duration(seconds: 1),
              width: _width[_index],
              height: _height[_index],
              curve: Curves.decelerate,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 30),
                backgroundColor: Colors.indigo.shade600,
              ),
              onPressed: () {
                setState(() {
                  _index = (_index + 1) % _containerBgColor.length;
                });
              },
              child: const Text(
                'Animate',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
