import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function onchange;
    final Function longpress;

  TaskTile({this.taskTitle, this.isChecked, this.onchange, this.longpress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpress,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onchange,
        activeColor: Colors.lightGreen,
      ),
    );
  }
}
