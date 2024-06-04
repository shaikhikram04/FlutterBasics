import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.amberAccent),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold,),
          titleMedium: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic,),
        ),
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
        title: const Text('Style And Theme', style: TextStyle(fontWeight: FontWeight.w500),),
      ),
      body: Column(
        children: [
          Text('Hello World!', style: mTextStyle21(Colors.green, FontWeight.bold)),
          Text('Hello World!', style: mTextStyle11(fontWeight: FontWeight.w500)),
          Text('Hello World!', style: mTextStyle21(Colors.redAccent,FontWeight.bold)),
          Text('Hello World!', style: mTextStyle11(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
