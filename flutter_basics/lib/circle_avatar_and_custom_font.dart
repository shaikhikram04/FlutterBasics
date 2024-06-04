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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
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
        title: const Text('Circle Avatar'),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: CircleAvatar(
          // backgroundImage: AssetImage('assets/images/pngwing.png'),
          backgroundColor: const Color.fromARGB(255, 253, 194, 0),
          maxRadius: 120,
          child: Column(
            children: [
              Image.asset(
                'assets/images/pngegg.png',
                height: 180,
              ),
              const Text(
                'Name',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'FontMain',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
