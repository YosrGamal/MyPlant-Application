import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/body_reminder.dart';

class Reminder extends StatefulWidget {
  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            child: BodyReminder(),
          ),
        ]),
      ),
    );
  }
}
