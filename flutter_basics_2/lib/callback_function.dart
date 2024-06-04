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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  callBack() {
    if (kDebugMode) {
      print('Clicked!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Callback Function'),
        backgroundColor: Colors.amber,
      ),
      body: ElevatedButton(
        /**
         *! instead of defining function for on click we created a function
         *! It can be use multiple time for same action **/
        onPressed: callBack,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.indigo),
        ),
        child: const Text(
          'Click Me!',
          style: TextStyle(color: Colors.white,fontSize: 21),
        ),
      ),
    );
  }
}
