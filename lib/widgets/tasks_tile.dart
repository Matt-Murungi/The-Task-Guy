import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
 bool isChecked = false;

void checkboxCallback(bool checkboxState){
  setState(() {
    isChecked = checkboxState;
  });
}
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task', style: TextStyle(
        decoration:isChecked ? TextDecoration.lineThrough: null,
      ),),
      trailing: TaskCheckbox(isChecked, checkboxCallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  
  final bool checkBoxState;
  final Function toggleCheckBoxState;
  TaskCheckbox(this.checkBoxState, this.toggleCheckBoxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkBoxState,
    onChanged: toggleCheckBoxState,
    activeColor: Colors.lightGreen,
    );
  }
}
