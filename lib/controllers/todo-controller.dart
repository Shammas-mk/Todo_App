import 'package:get/get.dart';

class TodoController extends GetxController {
  var tasks = [].obs;

  addTask(title, desc) {
    tasks.add({"title": title, "desc": desc, "isCompleted": false});
    print(tasks);
  }

  markAsCompleted(index) {
    tasks[index]["isCompleted"] = true;
    tasks.refresh();
  }

  markAsInCompleted(index) {
    tasks[index]["isCompleted"] = false;
    tasks.refresh();
  }

  getTotalTaskCount() {
    return tasks.length;
  }

  getCompletedTaskCount() {
    var completedTask = tasks.where((task) => task["isCompleted"] == true);
    return completedTask.length;
  }
}
