import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 45,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'World!',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 60,
                      color: Colors.blueAccent),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 35,
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(text: 'It\'s'),
                  TextSpan(text: ' all ', style: TextStyle(color: Colors.blue, fontSize: 60)),
                  TextSpan(text: 'about widget'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
