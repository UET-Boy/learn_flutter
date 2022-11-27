import 'package:flutter/material.dart';

void main() {
  runApp(const PickMe());
}

class PickMe extends StatelessWidget {
  const PickMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Give me tea',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button')),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Orders')),
          ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.amberAccent,
                  onPrimary: Colors.black,
                  elevation: 10.0,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )),
              icon: const Icon(Icons.toys_outlined),
              label: const Text('Buy Now'))
        ]),
      ),
    );
  }
}
