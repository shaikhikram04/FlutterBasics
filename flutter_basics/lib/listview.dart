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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent),
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
    var arrNames = [
      'Rahul',
      'Akash',
      'Samad',
      'Abdul',
      'Joseph',
      'Gill',
      'Russell'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              arrNames[index],
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
        scrollDirection: Axis.vertical,
        itemCount: arrNames.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.lightBlue,
            thickness: 2,
            height: 100,
          );
        },
      ),
    );
  }
}
