import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 549),
        child: Hero(
          tag: 'Mountain',
          child: Image.asset('assets/images/Mountain.jpg'),
        ),
      ),
    );
  }
}
