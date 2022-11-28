import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int nAge = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text('Employee ID Card 2'),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/animboy.jpeg'),
                ),
              ),
              const Divider(
                thickness: 2.0,
                height: 50,
                color: Colors.blueGrey,
              ),
              const Text(
                'NAME:',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 2.0,
                width: 42.0,
                child: Container(
                  color: Colors.red,
                ),
              ),
              const Text(
                'Lee Chu',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 28,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'AGE:',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 2.0,
                width: 30.0,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    child: Text(
                      '$nAge',
                      style: const TextStyle(
                          color: Colors.yellow,
                          fontSize: 28,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton.icon(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[800]),
                      onPressed: () {
                        setState(() {
                          nAge += 1;
                        });
                      },
                      icon: const Icon(
                        Icons.text_increase_rounded,
                        color: Colors.green,
                      ),
                      label: const Text(
                        "Plus",
                        style: TextStyle(color: Colors.white),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton.icon(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[800]),
                      onPressed: () {
                        setState(() {
                          nAge -= 1;
                        });
                      },
                      icon: const Icon(
                        Icons.text_decrease_rounded,
                        color: Colors.red,
                      ),
                      label: const Text(
                        "Minus",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'RANK:',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 2.0,
                width: 38.0,
                child: Container(
                  color: Colors.red,
                ),
              ),
              const Text(
                'Operations Manager',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 28,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'CONTACT DETAILS:',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 2.0,
                width: 125.0,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.phone_android_rounded,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                    Text(
                      '+1 92 322 930293',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.mail_outline,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  Text(
                    'lee.chu@company.com',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                        fontSize: 20),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
