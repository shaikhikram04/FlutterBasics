
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extended Widget'),
        backgroundColor: Colors.lightBlue.shade400,
      ),
      body:Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.lime,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.black38,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      );
  }
}
