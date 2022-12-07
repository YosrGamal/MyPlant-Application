import 'package:flutter/material.dart';
import 'package:my_plant_application/view/Users/widgets/components/setting_reminder_header.dart';

class Settingreminder extends StatelessWidget {
  const Settingreminder({super.key});
  @override
  Widget build(BuildContext context) {
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
            HeaderSettingReminder(size: size),
          ]),
        ],
      ),
    );
  }
}
