import 'package:flutter/material.dart';

void main() {
  runApp(const SleekApp());
}

class SleekApp extends StatelessWidget {
  const SleekApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pizza Delivery App',
      home: PizzaApp(),
    );
  }
}

class AppBarContent extends StatelessWidget {
  const AppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: const [
              Text(
                'Book a Saloon',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Spacer(),
              Icon(Icons.mail),
              Icon(Icons.more_vert)
            ],
          ),
        ),
      ],
    );
  }
}

class PizzaApp extends StatelessWidget {
  const PizzaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: Container(
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: <Color>[Colors.blue, Colors.pink])),
            child: const AppBarContent(),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(100),
          child: Text('Hello'),
        ));
  }
}
