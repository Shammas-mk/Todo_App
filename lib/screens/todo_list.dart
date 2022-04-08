import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/controllers/todo-controller.dart';
import 'package:todo_app_getx/screens/add_task.dart';
import 'package:todo_app_getx/screens/custom_widgets/status_card.dart';

class TodoListScreen extends StatelessWidget {
  TodoListScreen({Key? key}) : super(key: key);
  TodoController _todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Todo List"),
      ),
      body: Column(
        children: [
          StatusCard(),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: _todoController.tasks.length,
                itemBuilder: (bc, index) {
                  return ListTile(
                    title: Text("${_todoController.tasks[index]['title']}"),
                    subtitle: Text("${_todoController.tasks[index]['desc']}"),
                    trailing: IconButton(
                      icon: _todoController.tasks[index]['isCompleted']
                          ? Icon(
                              Icons.check_box,
                              color: Colors.green,
                            )
                          : Icon(Icons.check_box_outline_blank),
                      onPressed: () {
                        _todoController.tasks[index]['isCompleted']
                            ? _todoController.markAsInCompleted(index)
                            : _todoController.markAsCompleted(index);
                      },
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.to(AddListScreen());
        },
      ),
    );
  }
}
