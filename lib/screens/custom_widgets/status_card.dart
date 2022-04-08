import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/controllers/todo-controller.dart';

class StatusCard extends StatelessWidget {
  StatusCard({Key? key}) : super(key: key);

  TodoController _todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text(
                  "Total",
                ),
                const SizedBox(
                  height: 8,
                ),
                Obx(
                  () => Text(
                    "${_todoController.getTotalTaskCount()}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text("Completed"),
                const SizedBox(height: 8),
                Obx(
                  () => Text(
                    "${_todoController.getCompletedTaskCount()}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
