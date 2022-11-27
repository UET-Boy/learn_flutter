import 'package:flutter/material.dart';

void main() {
  runApp(const CenterApp());
}

class CenterApp extends StatelessWidget {
  const CenterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      title: 'Ride Hailing Now',
      home: const TangApp(),
    );
  }
}

class TangApp extends StatelessWidget {
  const TangApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride Hailing Now'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              color: Colors.cyan,
              padding: const EdgeInsets.all(40.0),
              child: const Text('Third Box'),
            ),
            Container(
              color: Colors.amber,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20.0),
              child: const Text('First Box'),
            ),
            Container(
              color: Colors.red,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(30.0),
              child: const Text('Second Box'),
            ),
          ],
        ),
      ),
    );
  }
}
