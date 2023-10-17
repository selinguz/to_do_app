import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      margin: EdgeInsets.only(bottom: 22.0, top: 22.0),
      padding: EdgeInsets.symmetric(vertical: 50.0),
      height: MediaQuery.of(context).size.width,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 3.0,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 3.0),
                  ),
                ),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  backgroundColor: Colors.lightBlueAccent,
                ),
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                },
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
