import 'package:flutter/material.dart';
import 'package:testproject/Pages/utils/Button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "add a new task",
              ),
            ),
            Row(
              children: [
                MyButton(text: "Save", onpressed: () {}),
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
