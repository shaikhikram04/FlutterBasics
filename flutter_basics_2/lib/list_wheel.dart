import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListWheel ScrollView',
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
  final List<Color> listWheelIndex = [
    Colors.red,
    Colors.tealAccent,
    Colors.yellowAccent,
    Colors.indigoAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.pinkAccent,
    Colors.amberAccent,
    Colors.deepOrangeAccent,
    Colors.deepPurpleAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3D List'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListWheelScrollView(
          itemExtent: 150,
          children: listWheelIndex
              .map(
                (color) => Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(21)),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
