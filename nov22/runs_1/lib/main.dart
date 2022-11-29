import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

//here autoreload is enabled. To check how watch this video
//https://www.youtube.com/watch?v=zwPBMg3SHVU&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=7

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Sample Application',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent[400],
      ),
      body: const Center(
        child: Text(
          'Body of the App',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.deepOrange,
            fontFamily: 'IndieFlower',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.brown[600],
        child: const Icon(Icons.heart_broken),
      ),
    );
  }
}
