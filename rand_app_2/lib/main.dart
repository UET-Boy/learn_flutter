import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'This is text body',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(207, 245, 127, 23),
              //fontStyle: FontStyle.italic,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.heart_broken,
            color: Color.fromARGB(255, 177, 15, 12),
          ),
        ),
      )));
}
