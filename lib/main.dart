import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/model/task_data.dart';
import 'package:to_do/screens/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

