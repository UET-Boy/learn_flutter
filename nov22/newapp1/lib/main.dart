import 'package:flutter/material.dart';

void main() {
  runApp(const DeleteApp());
}

class DeleteApp extends StatelessWidget {
  const DeleteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const YourApp(),
    );
  }
}

class YourApp extends StatelessWidget {
  const YourApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buy Sell App')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.red,
            ),
            Container(height: 150.0, width: 150.0, color: Colors.cyan),
          ],
        ),
      ),
    );
  }
}
