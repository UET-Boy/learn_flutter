import 'package:flutter/material.dart';

void main() {
  runApp(const GrandApp());
}

class GrandApp extends StatelessWidget {
  const GrandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random App',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const SmallApp(),
    );
  }
}

class SmallApp extends StatelessWidget {
  const SmallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book a Ride'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.place_outlined,
              size: 100,
              color: Colors.red,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow, foregroundColor: Colors.red),
              child: const Text('Button'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              child: const Text(
                'Text Button',
                style: TextStyle(color: Colors.yellowAccent),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.airplanemode_active_outlined),
                label: const Text('Charterd Plane')),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red, elevation: 10),
              child: const Text('Mail me'),
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.mail),
                label: const Text('Message')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.car_crash)),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: const Text('Ride'),
      ),
    );
  }
}
