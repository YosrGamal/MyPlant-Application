import 'package:flutter/material.dart';
import 'package:my_plant_application/data/repository/reminder_repo.dart';
import 'package:my_plant_application/domain/plant.dart';
import 'package:my_plant_application/domain/remind.dart';
import 'package:my_plant_application/view/Users/widgets/components/body_setting_reminder.dart';

class Switchreminder extends StatefulWidget {
  final Plant plant;
  const Switchreminder({required this.plant ,super.key});

  @override
  State<Switchreminder> createState() => _SwitchreminderState();
}

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
                  if (s1 == true) {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        builder: (BuildContext context) {
                          return SizedBox(
                            child: Settingreminder(plant: widget.plant),
                          );
                        });
                  }
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
                  if (s2 == true) {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        builder: (BuildContext context) {
                          return SizedBox(
                            child: Settingreminder(plant: widget.plant),
                          );
                        });
                  }
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
                  if (s3 == true) {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        builder: (BuildContext context) {
                          return SizedBox(
                            child: Settingreminder(
                              plant: widget.plant,
                            ),
                          );
                        });
                  }
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
                  if (s4 == true) {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0))),
                        builder: (BuildContext context) {
                          return SizedBox(
                            child: Settingreminder(plant: widget.plant),
                          );
                        });
                  }
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
