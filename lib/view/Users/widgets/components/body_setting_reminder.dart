import 'package:flutter/material.dart';
import 'package:my_plant_application/view/Users/widgets/components/setting_reminder_header.dart';
import 'package:my_plant_application/view/Users/widgets/components/switch_setting_reminder.dart';

class Settingreminder extends StatelessWidget {
  const Settingreminder({super.key});
  @override
  Widget build(BuildContext context) {
     const Switchsettingreminder();
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Container(
              padding: const EdgeInsets.only(top: 250),
              height: MediaQuery.of(context).size.height - 80,
              width: double.infinity,
            ),
            Container(
            margin: const EdgeInsets.only(top: 302),
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
            margin: const EdgeInsets.only(top: 250),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/sun.png"),
                  fit: BoxFit.contain),
            ),
          ),
            HeaderSettingReminder(size: size),
          ]),
        ],
      ),
    );
  }
}
