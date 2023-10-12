import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked == true
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: TaskCheckbox(isChecked, (bool? checkboxState) {
        setState(() {
          isChecked = checkboxState ?? false;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final void Function(bool?) toggleCheckbox;

  TaskCheckbox(this.checkboxState, this.toggleCheckbox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckbox,
    );
  }
}
