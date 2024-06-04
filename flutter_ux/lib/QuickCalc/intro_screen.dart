import 'package:flutter/material.dart';
import 'package:flutter_ux/QuickCalc/basic_calculator.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.amberAccent,
      ),
      body: SizedBox(
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Text(
              'Welcome!!',
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Click here to open Calculator',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 11),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const MyCalculator(title: 'QuickCalc'),
                  ),
                );
              },
              child: Image.asset('assets/images/cals.png', width: 100,),
            ),
          ],
        ),
      ),
    );
  }
}
