import 'package:flutter/material.dart';
import 'package:testproject/Pages/utils/TodoTile.dart';
import './utils/DialogBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
// text controller

final _controller = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  List todoList = [
    ["Make pizza", false],
    ["Make firebase", true],
  ];
  //checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
      print(_controller);
    });
  }

  void SaveNewTask() {
    setState(() {
      todoList.add([_controller.text, false]);
    });
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: SaveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text("To Do"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.yellow[400],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
              taskName: todoList[index][0],
              taskCompleted: todoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index));
        },
      ),
    );
  }
}
