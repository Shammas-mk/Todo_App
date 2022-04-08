import 'package:flutter/material.dart';
import 'package:todo_app_getx/screens/add_task.dart';
import 'package:todo_app_getx/screens/todo_list.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: TodoListScreen(),
    );
  }
}
