import 'dart:io';

import 'package:flutter/foundation.dart';
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
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.yellow,
            // background: const Color.fromRGBO(180, 180, 18, 20),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: const Text('Flutter Container'),
      ),
      body:
        Column(
          children: [
            Center(
              child: Container(
                width: 250,
                height: 150,
                color: Colors.amberAccent,
                child: const Center(child: Text('I\'m Container', style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  backgroundColor: Color.fromRGBO(251, 136, 136, 200),
                ),),),
              ),
            ),
            OutlinedButton(
              child: const Text('Outline Button'),
              onPressed: (){
                stdout.write('pressed of Outline Button');
              },
            ),
            ElevatedButton(
              child:const Text('Raised/Elevated Button'),
              onPressed: (){
                if (kDebugMode) {
                  print('Pressed Elevated Button');
                }
              },
              onLongPress: () {
                if (kDebugMode) {
                  print('Long pressed Elevated Button');
                }
              },
            ),
            TextButton(
              child: const Text('Click Here!!', style: TextStyle(fontSize: 20),),
              onPressed: (){ // action performed on pressed
                if (kDebugMode) {
                  print('Text Button Pressed');
                }
              },
              onLongPress: (){
                if (kDebugMode) {
                  print('Text Button long pressed');
                }
              },
            ),
          ],
        ),
    );
  }
}
