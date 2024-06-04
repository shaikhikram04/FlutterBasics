import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animated Opacity',
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

  var opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animated Opacity',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent.shade700,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 2),
              curve: Curves.decelerate,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),

            const SizedBox(
              height: 12
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacity = 1.0;
                });
              },
              child: const Text('Make Visible', style: TextStyle(fontSize: 21)),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacity = 0.0;
                });
              },
              child: const Text('Make Invisible', style: TextStyle(fontSize: 21)),
            ),
          ],
        ),
      ),
    );
  }
}
