import 'package:flutter/material.dart';

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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.horizontal,
          children: [
            getContainer(Colors.blue),
            getContainer(Colors.cyan),
            getContainer(Colors.lightGreenAccent),
            getContainer(Colors.grey),
            getContainer(Colors.deepOrange),
            getContainer(Colors.deepPurple),
            getContainer(Colors.pink),
            getContainer(Colors.orange),
            getContainer(Colors.indigo),
            getContainer(Colors.yellow),
            getContainer(Colors.teal),
          ],
        ),
      ),
    );
  }
 }

 Widget getContainer(Color color) {
  return Container(
    color: color,
    width: 80,
    height: 80,
  );
 }