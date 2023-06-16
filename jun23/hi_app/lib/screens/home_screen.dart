import 'package:flutter/material.dart';
import 'package:hi_app/models/question_model.dart';
import '../constants.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Question> _question = [
    Question(
        id: '10',
        title: 'What is 1+2 ?',
        options: {'5': false, '30': false, '2': true, '9': false}),
    Question(
        id: '10',
        title: 'What is 9+2 ?',
        options: {'5': false, '30': false, '11': true, '9': false})
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Quiz App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              QuestionWidget(
                  indexAction: index,
                  question: _question[index].title,
                  totalQuestions: _question.length),
              const Divider(
                color: neutral,
                thickness: 2,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
