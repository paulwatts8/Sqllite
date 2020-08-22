import 'package:flutter/material.dart';
import 'package:sqllite/widgets/widget.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children:[
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 6.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Image(
                          image:
                              AssetImage('assets/images/back_arrow_icon.png')),
                    ),
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Task Title",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF211551)),
                  ))
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter the decription for the Task...",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 24.0)),
            ),
            TodoWidget(
              text: 'Create 1st task',
              isDone: true,
            ),
            TodoWidget(
              isDone: false,
              text: 'create first todo',
            ),
            TodoWidget(
              isDone: false,
            ),
            TodoWidget(
              isDone: false,
            )
          ],
        ),
         Positioned(
              bottom: 24.0,
              right: 24.0,
              child: GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20.0)),
                    child:
                        Image(image: AssetImage('assets/images/delete_icon.png'))),
              ),
            )
        ]),
      ),
    );
  }
}
