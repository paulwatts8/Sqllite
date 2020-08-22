import 'package:flutter/material.dart';
import 'package:sqllite/screens/taskpage.dart';
import 'package:sqllite/widgets/widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        width: double.infinity,
        color: Color(0xFFF6F6F6),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 25.0, top: 32.0),
                  decoration: BoxDecoration(color: Colors.white54),
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
                Expanded(
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                                      child: ListView(children: [
                      TaskCard(),
                      TaskCard(),
                      TaskCard(),
                      TaskCard(),
                      TaskCard()
                    ]),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 24.0,
              right: 0.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TaskPage()));
                },
                child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20.0)),
                    child:
                        Image(image: AssetImage('assets/images/add_icon.png'))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
