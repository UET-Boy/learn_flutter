import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const GripOne());
}

class GripOne extends StatelessWidget {
  const GripOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: false,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Random App'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('Button 1'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit_sharp),
                  label: const Text('Hello Button'),
                ),
              ],
            ),
          ),
        ));
  }
}

/*
Center(
              child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: const Text(
              'Press Now',
            ),
          )),
*/