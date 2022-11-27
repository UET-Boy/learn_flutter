import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.amber,
      
    ),
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Running App'),
        ),
        body: const Center(
          child: Icon(
            Icons.airplanemode_inactive,
            size: 40,
          ),
        )),
  ));
}
