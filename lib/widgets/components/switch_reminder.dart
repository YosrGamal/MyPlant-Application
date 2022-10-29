import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/reminder_tab.dart';
//import 'package:my_plant_application/widgets/components/setting_reminder.dart';

class Switchreminder extends StatefulWidget {
  const Switchreminder({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SwitchreminderState createState() => _SwitchreminderState();
}

class _SwitchreminderState extends State<Switchreminder> {
  bool s1 = false, s2 = false, s3 = false, s4 = false, s5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          const TabReminder(),
          Container(
              padding: const EdgeInsets.only(top: 350, left: 50, right: 20),
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
                    title: const Text(
                      'Water',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                  SwitchListTile(
                    activeColor: const Color.fromARGB(255, 67, 105, 68),
                    value: s2,
                    onChanged: (bool value) {
                      setState(() {
                        s2 = value;
                      });
                    },
                    title: const Text(
                      'Prune',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                  SwitchListTile(
                    activeColor: const Color.fromARGB(255, 67, 105, 68),
                    value: s3,
                    onChanged: (bool value) {
                      setState(() {
                        s3 = value;
                      });
                    },
                    title: const Text(
                      'Mist',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                  SwitchListTile(
                    activeColor: const Color.fromARGB(255, 67, 105, 68),
                    value: s4,
                    onChanged: (bool value) {
                      setState(() {
                        s4 = value;
                      });
                    },
                    title: const Text(
                      'Fertilizer',
                      style: TextStyle(
                          color: Color.fromARGB(255, 60, 100, 73),
                          fontSize: 22),
                    ),
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 362),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/water.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 409),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/prune.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 460),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/mist.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 505),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/fertilizer.png"),
                  fit: BoxFit.contain),
            ),
          ),
        ]),
      ),
    );
  }
}
