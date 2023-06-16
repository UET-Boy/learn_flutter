import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      autofocus: true,
      onTap: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Colors.white,
      leading: const Icon(
        Icons.check_box,
        color: tdBlue,
      ),
      title: const Text('Check Mail',
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: TextDecoration.lineThrough)),
      trailing: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            onPressed: () {},
            iconSize: 18,
            color: Colors.white,
            icon: const Icon(Icons.delete),
          )),
    );
  }
}
