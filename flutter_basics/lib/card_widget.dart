
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent),
      ),
      debugShowCheckedModeBanner: false,
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
        title: const Text('Card Widget'),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Card(
          margin: EdgeInsets.all(11),
          elevation: 20,
          shadowColor: Colors.green,
          color: Colors.green,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Hello World', style: TextStyle(fontSize: 35),),
          ),
        ),
      ),
    );
  }
}