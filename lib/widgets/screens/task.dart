import 'package:flutter/material.dart';

class Reminder extends StatefulWidget {
  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  bool s1 = false, s2 = false, s3 = false, s4 = false, s5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            child: Stack(children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 350, left: 50, right: 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 67, 105, 68),
                    value: s1,
                    onChanged: (bool value) {
                      setState(() {
                        s1 = value;
                      });
                    },
                    title: Text(
                      'Water',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 67, 105, 68),
                    value: s2,
                    onChanged: (bool value) {
                      setState(() {
                        s2 = value;
                      });
                    },
                    title: Text(
                      'Prune',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 67, 105, 68),
                    value: s3,
                    onChanged: (bool value) {
                      setState(() {
                        s3 = value;
                      });
                    },
                    title: Text(
                      'Mist',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Color.fromARGB(255, 67, 105, 68),
                    value: s4,
                    onChanged: (bool value) {
                      setState(() {
                        s4 = value;
                      });
                    },
                    title: Text(
                      'Fertilizer',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                ],
              )),
    
    );
  }
}

