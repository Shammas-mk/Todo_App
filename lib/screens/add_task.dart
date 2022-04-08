import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/controllers/todo-controller.dart';
import 'package:todo_app_getx/screens/todo_list.dart';

class AddListScreen extends StatelessWidget {
  AddListScreen({Key? key}) : super(key: key);
  final TextEditingController _titleCtrl = TextEditingController();
  final TextEditingController _descCtrl = TextEditingController();
  final TodoController _todoCrtl = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Add Task"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleCtrl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Title",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _descCtrl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Describtion",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _todoCrtl.addTask(_titleCtrl.text, _descCtrl.text);
                  Get.to(TodoListScreen());
                },
                child: const Text("Add List"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
