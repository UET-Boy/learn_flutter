import 'package:flutter/material.dart';

void main() {
  runApp(const HeroApp());
}

class HeroApp extends StatelessWidget {
  const HeroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Forex App',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          body: const Center(
            child: Text(
              'This application is under development and you have to keep patience until it is done. It will be ready by Sunday.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
