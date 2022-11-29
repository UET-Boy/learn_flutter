import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MatApp(),
  ));
}

class MatApp extends StatelessWidget {
  const MatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        title: const Text('IDENTITY CARD'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/animboy.jpeg'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                padding: const EdgeInsets.all(8.0),
                color: Colors.white30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
