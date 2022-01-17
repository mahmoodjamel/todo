import 'package:flutter/material.dart';
import 'package:todo_ui/models/task.dart';

class TaskWidget extends StatelessWidget{
  Function function;
  Task task;
  TaskWidget(this.task,this.function);
  @override
  Widget build(BuildContext context) {
    return Card(
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),

        ),
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric(vertical:10 ,horizontal: 5),
        child: CheckboxListTile(
          title: Text(task.title),
          value: task.isComplete,
          onChanged: (value){
            this.function(task);
          },

        ),
      ),
    );
  }

}