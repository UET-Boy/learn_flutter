import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App Screen'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'This is the body of the app',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              //fontStyle: FontStyle.italic,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.health_and_safety_rounded,
            color: Color.fromARGB(255, 177, 15, 12),
          ),
        ),
      )));
}
