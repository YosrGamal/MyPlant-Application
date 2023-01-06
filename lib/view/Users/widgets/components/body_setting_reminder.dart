import 'package:flutter/material.dart';
import 'package:my_plant_application/view/Users/widgets/components/switch_setting_reminder.dart';

class Settingreminder extends StatelessWidget {
  const Settingreminder({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Container(
              padding: const EdgeInsets.only(top: 250,left: 20),
              height: MediaQuery.of(context).size.height - 80,
              width: double.infinity,
               child: const Text(
              "Time of day ",
              style: TextStyle(
                  height: 3,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                    color: Color.fromARGB(255, 60, 100, 73)),
            ),
            ),
              Container(
              padding: const EdgeInsets.only(top: 280,left: 20),
              height: MediaQuery.of(context).size.height - 80,
              width: double.infinity,
               child: const Text(
              "(Tap to edit) ",
              style: TextStyle(
                  height: 3,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                   color: Color.fromARGB(255, 166, 174, 168)),
                
            ),
            ),
            Container(
            margin: const EdgeInsets.only(top: 405),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/evening.png"),
                  fit: BoxFit.contain),
            ),
          ),
            Container(
            margin: const EdgeInsets.only(top: 340),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/sun.png"),
                  fit: BoxFit.contain),
            ),
          ),
            const Switchsettingreminder(),
          ]),
        ],
      ),
    );
  }
}
