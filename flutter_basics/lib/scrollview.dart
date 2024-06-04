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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
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
        title: const Text('Scrollview Widget'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:
      SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 11, right: 11,),
                      height: 280,
                      width: 280,
                      color: Colors.orangeAccent,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 11, right: 11,),
                      height: 280,
                      width: 280,
                      color: Colors.purple,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 11, right: 11,),
                      height: 280,
                      width: 280,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11, right: 11,),
                height: 280,
                width: 280,
                color: Colors.lightBlueAccent,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11, right: 11,),
                height: 280,
                width: 280,
                color: Colors.green,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 11, right: 11,),
                height: 280,
                width: 280,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
