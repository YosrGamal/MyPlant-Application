import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/body_setting_reminder.dart';

// ignore: camel_case_types
class Switchreminder extends StatefulWidget {
  const Switchreminder({super.key});

  @override
  State<Switchreminder> createState() => _SwitchreminderState();
}

// ignore: camel_case_types
class _SwitchreminderState extends State<Switchreminder> {
  bool s1 = false, s2 = false, s3 = false, s4 = false, s5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 290, left: 50, right: 20),
        alignment: Alignment.topLeft,
        child: ListView(
          children: [
            SwitchListTile(
              activeColor: const Color.fromARGB(255, 67, 105, 68),
              value: s1,
              onChanged: (bool value) {
                setState(() {
                  s1 = value;
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0))),
                      builder: (BuildContext context) {
                        return const SizedBox(
                          child: Settingreminder(),
                        );
                      });
                });
              },
              title: const Text(
                'Water',
                style: TextStyle(
                    color: Color.fromARGB(255, 60, 100, 73), fontSize: 22),
              ),
            ),
            SwitchListTile(
              activeColor: const Color.fromARGB(255, 67, 105, 68),
              value: s2,
              onChanged: (bool value) {
                setState(() {
                  s2 = value;
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0))),
                      builder: (BuildContext context) {
                        return const SizedBox(
                          child: Settingreminder(),
                        );
                      });
                });
              },
              title: const Text(
                'Prune',
                style: TextStyle(
                    color: Color.fromARGB(255, 60, 100, 73), fontSize: 22),
              ),
            ),
            SwitchListTile(
              activeColor: const Color.fromARGB(255, 67, 105, 68),
              value: s3,
              onChanged: (bool value) {
                setState(() {
                  s3 = value;
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0))),
                      builder: (BuildContext context) {
                        return const SizedBox(
                          child: Settingreminder(),
                        );
                      });
                });
              },
              title: const Text(
                'Mist',
                style: TextStyle(
                    color: Color.fromARGB(255, 60, 100, 73), fontSize: 22),
              ),
            ),
            SwitchListTile(
              activeColor: const Color.fromARGB(255, 67, 105, 68),
              value: s4,
              onChanged: (bool value) {
                setState(() {
                  s4 = value;
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0))),
                      builder: (BuildContext context) {
                        return const SizedBox(
                          child: Settingreminder(),
                        );
                      });
                });
              },
              title: const Text(
                'Fertilizer',
                style: TextStyle(
                    color: Color.fromARGB(255, 60, 100, 73), fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
