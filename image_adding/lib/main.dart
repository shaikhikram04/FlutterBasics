// ignore: unused_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Image Adding'),
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
        title: Text(widget.title),
      ),
      body:
        
      //* Adding image from assets
      Center(
        child: Container(
          // width: 420,
          // height: 240,
          color: RenderErrorBox.backgroundColor,
          child: Image.asset(
            // adding jpg image
            'assets/images/tanha ped.jpg',

            // adding png image
            // 'assets/images/TheCar.png',
            width: 400,
            height: 240,
          ),
        ),
      ),
      
      //* adding image from Internet
      // Image.network('https://i.pinimg.com/564x/9e/b3/fd/9eb3fd7cd00e6377cb57625b29940d02.jpg', width: 200,),

    );
  }
}
