import 'package:flutter/material.dart';

void main() {
  runApp(const SigmaApp());
}

class SigmaApp extends StatelessWidget {
  const SigmaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single App',
      theme: ThemeData.dark(),
      home: const RefreshApp(),
    );
  }
}

class RefreshApp extends StatelessWidget {
  const RefreshApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping App"),
      ),
    );
  }
}
