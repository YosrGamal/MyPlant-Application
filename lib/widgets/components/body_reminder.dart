import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/switch_reminder.dart';

class BodyReminder extends StatefulWidget {
  @override
  _BodyReminderState createState() => _BodyReminderState();
}

class _BodyReminderState extends State<BodyReminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            child: Switchreminder(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25), //imagse
            height: 180,
            width: 380,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Plant down left.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 220),
            padding: const EdgeInsets.only(left: 45, right: 45),
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 251, 252, 251),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text(
                'Spider Plant',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 40, 65, 48)),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
