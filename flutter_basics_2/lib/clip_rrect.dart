import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Clip RRect',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clippers'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(21),
          child: Image.asset('assets/images/Street.jpg', width: 300, height: 300, fit: BoxFit.fill,),
        ),
      ),
    );
  }
}
