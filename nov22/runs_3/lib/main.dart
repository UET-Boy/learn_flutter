import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Learning App'),
        centerTitle: true,
      ),
      backgroundColor: Colors.cyan,
    ),
  ));
}
