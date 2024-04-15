import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //text editing controller to access what the user type
  dynamic myController = TextEditingController();

  void greetUser() {
    print(myController.text);
  }

  String greetingUser = "";
  void greetingUsers() {
    setState(() {
      greetingUser = "Hello" + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingUser),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(gapPadding: 20.0),
                    hintText: "Your Full Name"),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: ElevatedButton(
                  style: ButtonStyle(elevation: MaterialStatePropertyAll(0)),
                  onPressed: greetingUsers,
                  child: Text("Tap"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
