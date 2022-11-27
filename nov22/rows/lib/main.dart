import 'package:flutter/material.dart';

void main() {
  runApp(const TextApp());
}

class TextApp extends StatelessWidget {
  const TextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hiring a Pro',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const ImageApp(),
    );
  }
}

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Container(
          alignment: Alignment.center,
          height: 100.0,
          width: 100.0,
          padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: <Color>[Colors.cyan, Colors.red])),
          child: const Text(
            'Ride Hailing App',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //: CrossAxisAlignment.start,
        children: [
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.amber),
              child: const Text(
                'Text Button',
                style: TextStyle(color: Colors.red),
              )),
          const Text('Spacing'),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.red,
            child: const Text('Inside Container'),
          )
        ],
      ),
    );
  }
}
