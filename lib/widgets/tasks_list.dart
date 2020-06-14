import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/model/task_data.dart';
// import 'package:to_do/model/task.dart';
import 'package:to_do/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final taskItem = taskData.tasks[index];
          return TaskTile(
            taskTitle: taskItem.name,
            isChecked: taskItem.isDone,
             onchange: (checkboxState){
               taskData.updateTask(taskItem);
             },
             longpress: (){
               print("Pressed");
               taskData.deleteTask(taskItem);
             },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
