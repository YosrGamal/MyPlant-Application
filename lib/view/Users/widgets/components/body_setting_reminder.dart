import 'package:flutter/material.dart';
import 'package:my_plant_application/domain/plant.dart';
import 'package:my_plant_application/view/Users/widgets/components/switch_setting_reminder.dart';

class Settingreminder extends StatefulWidget {
  final Plant plant;
  const Settingreminder({required this.plant, super.key});

  @override
  State<Settingreminder> createState() => _SettingreminderState();
}

class _SettingreminderState extends State<Settingreminder> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Text(
                      'Cancel',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 17,
                            // color: tColor,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(136.0, 85.0, 0.0, 15.0),
              child: const Text(
                "Water ",
                style: TextStyle(
                    height: 2,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Color.fromARGB(255, 60, 100, 73)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 170),
              width: MediaQuery.of(context).size.width,
              height: 230,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 251, 252, 251),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Text(
                  widget.plant.name!,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 25.0,
                      color: Color.fromARGB(255, 60, 100, 73)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 250, left: 20),
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
              padding: const EdgeInsets.only(top: 280, left: 20),
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
             Switchsettingreminder(plant:widget.plant),
          ]),
        ],
      ),
    );
  }
}
