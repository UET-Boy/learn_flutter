import 'package:flutter/material.dart';

void main() {
  runApp(const TwoApp());
}

class TwoApp extends StatelessWidget {
  const TwoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: const YourApp(),
    );
  }
}

class YourApp extends StatelessWidget {
  const YourApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
        centerTitle: true,
      ),
      bottomNavigationBar: const Text(
        'This is bottom',
        textAlign: TextAlign.center,
      ),
      body: Center(
        child: Container(
          color: Colors.amberAccent,
          width: 300.0,
          height: 300.0,
          child: Column(
            children: const [
              Icon(Icons.ac_unit_sharp),
              Text(
                'Showing AC Cooling',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: null, child: Text('Text Button')),
              Icon(Icons.airplanemode_active_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
