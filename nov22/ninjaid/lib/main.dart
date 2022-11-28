import 'package:flutter/material.dart';

void main() {
  runApp(const BravoApp());
}

class BravoApp extends StatelessWidget {
  const BravoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Random Idea',
      home: const DoApp(),
    );
  }
}

class DoApp extends StatelessWidget {
  const DoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ID Card'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'NAME:',
                style: TextStyle(letterSpacing: 1.0),
              ),
              const Text(
                'Tazz',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'TRAIT:',
                style: TextStyle(letterSpacing: 1.0),
              ),
              const Text(
                'Cartoon',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.phone_callback,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(width: 10),
                  Text('+91 323 675883')
                ],
              )
            ],
          ),
        ));
  }
}
