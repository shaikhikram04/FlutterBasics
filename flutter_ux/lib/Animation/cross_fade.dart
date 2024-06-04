import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animation',
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
  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cross Fade',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent.shade700,
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Container(
            color: const Color.fromARGB(255, 50, 149, 33),
            child: Image.asset(
              'assets/images/Red.png',
              height: 250,
            ),
          ),
          secondChild: Container(
            color: const Color.fromARGB(255, 197, 16, 18),
            child: Image.asset(
              'assets/images/Green.png',
              height: 200,
            ),
          ),
          crossFadeState:
              (isFirst) ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 2),
          firstCurve: Curves.easeInOut,
          secondCurve: Curves.bounceOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isFirst) {
            isFirst = false;
          } else {
            isFirst = true;
          }
          setState(() {});
        },
        child: const Icon(
          Icons.call_to_action,
        ),
      ),
    );
  }
}
