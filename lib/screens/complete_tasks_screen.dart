import 'package:flutter/material.dart';
import 'package:todo_ui/data/dummy_data.dart';
import 'package:todo_ui/ui/widget/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  Function function;
  CompleteTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return
      allTasks.where((element) => element.isComplete).length==0?Center(child: Text('No Comlete Tasks Found'),):
      ListView.builder(
        itemCount: allTasks.where((element) => element.isComplete).length, itemBuilder: (context, index) {
      return TaskWidget(allTasks.where((element) => element.isComplete).toList()[index], function);
    });
  }
}
