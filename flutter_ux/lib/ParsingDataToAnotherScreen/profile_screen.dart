import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String userName;

  const ProfileScreen(this.userName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, $userName',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back',
                style: TextStyle(fontSize: 21),
              ),
            )
          ],
        ),
      ),
    );
  }
}
