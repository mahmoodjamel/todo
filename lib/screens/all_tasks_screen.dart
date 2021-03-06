import 'package:flutter/material.dart';
import 'package:todo_ui/data/dummy_data.dart';
import 'package:todo_ui/ui/widget/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function function;
  AllTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allTasks.length, itemBuilder: (context, index) {
          return TaskWidget(allTasks[index], function);
    });
  }
}
