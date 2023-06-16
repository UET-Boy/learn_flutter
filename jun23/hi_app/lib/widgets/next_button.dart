import 'package:flutter/material.dart';
import '../constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: neutral, borderRadius: BorderRadius.circular(8)),
        child: const Text(
          'Next Question',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
