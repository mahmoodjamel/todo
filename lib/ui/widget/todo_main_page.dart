import 'package:flutter/material.dart';
import 'package:todo_ui/models/task.dart';
import 'package:todo_ui/screens/all_tasks_screen.dart';
import 'package:todo_ui/screens/complete_tasks_screen.dart';
import 'package:todo_ui/screens/incomplete_tasks_screen.dart';

class TodoMainPage extends StatefulWidget {
  @override
  State<TodoMainPage> createState() => _TodoMainPageState();
}

class _TodoMainPageState extends State<TodoMainPage> {
  updateAllScreens(Task task) {
    task.isComplete=!task.isComplete;
    setState(() {});
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

      appBar: AppBar(
        title: Text('TODO App'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'all'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Complete'),
          BottomNavigationBarItem(icon: Icon(Icons.cancel), label: 'InComplete')
        ],
        onTap: (newIndex) {
          setState(() {
            this.index = newIndex;
          });
        },
      ),
      body: index == 0
          ? AllTasksScreen(updateAllScreens)
          : index == 1
              ? CompleteTasksScreen(updateAllScreens)
              : InCompleteTasksScreen(updateAllScreens),
    );
  }
}
