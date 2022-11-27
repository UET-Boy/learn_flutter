import 'package:flutter/material.dart';

void main() {
  runApp(const TazzApp());
}

class TazzApp extends StatelessWidget {
  const TazzApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'RANDOM APP',
            style: TextStyle(
              fontFamily: 'IndieFlower',
              fontSize: 30,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 300.0,
            height: 300.0,
            color: Colors.amber,
            child: const Center(
              child: Text(
                'Text Inside the Box, Can you see?',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.ac_unit,
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          child: Text(
            'This is bottom bar',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
