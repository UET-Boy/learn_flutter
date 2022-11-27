import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

//this code talks about how to add an image from assets

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Application'),
        centerTitle: true,
        backgroundColor: Colors.redAccent[400],
      ),

      body: const Center(
        child: Icon(
          Icons.airport_shuttle_outlined,
          color: Colors.indigo,
          size: 60,
        ),
      ),

      /*
      body: Center(
          child: Image.asset(
              'assets/pack-1.jpg')), // here an image is attached from assets*/

      /*body: const Center(child: Image(image: AssetImage('assets/pack-3.jpg'))), // here an image is attached from assets*/

      //below is for networked image
      /*
      body: const Center(
          child: Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1526828676602-5627ef2eb28f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1lYWRvd3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'))),
      */

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.yellow,
        child: const Icon(
          Icons.heart_broken,
          color: Colors.pink,
        ),
      ),
    );
  }
}
