import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const ThisApp());
}

class ThisApp extends StatelessWidget {
  const ThisApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ThisHome());
  }
}

class ThisHome extends StatelessWidget {
  const ThisHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Forex App',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('Buy Now')),
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.yellow,
                child: const Text(
                  'Place your order inside the container, you cannot go out of this box',
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  softWrap: false,
                  style:
                      TextStyle(fontSize: 30, overflow: TextOverflow.ellipsis),
                ),
              ),
              const SizedBox(
                  height: 200.0,
                  width: 200.0,
                  child: Icon(Icons.warning_amber_outlined))
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.access_alarm_outlined,
              color: Colors.blue,
              size: 50,
            ),
            Text('Show Alarm'),
            Icon(
              Icons.access_alarm_outlined,
              color: Colors.red,
              size: 50,
            ),
          ],
        ));
  }
}
