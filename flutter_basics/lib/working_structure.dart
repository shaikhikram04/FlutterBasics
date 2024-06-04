import 'package:flutter/material.dart';

main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterApp',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue.shade500,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
              color: Colors.grey,
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(40),
              //   bottomRight: Radius.circular(40),
              // ),
              border: Border.all(
                color: Colors.black,
                width: 4,
              ),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.black54,
                  spreadRadius: 2,
                  blurStyle: BlurStyle.normal,
                ),
              ],
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
