import 'package:flutter/material.dart';
import 'package:testproject/Pages/utils/Button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "add a new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                ),
                MyButton(text: "Save", onpressed: onSave),
                MyButton(text: "Cancel", onpressed: () {}),
              ],
            )
          ],
        ),
        height: 120,
      ),
    );
  }
}
