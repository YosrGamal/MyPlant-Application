import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/view/Users/widgets/components/switch_setting_reminder.dart';

class HeaderSettingReminder extends StatefulWidget {
  const HeaderSettingReminder({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  State<HeaderSettingReminder> createState() => _HeaderSettingReminderState();
}
class _HeaderSettingReminderState extends State<HeaderSettingReminder> {
  bool s1 = false, s2 = false;
  @override
  Widget build(BuildContext context) { 
    //const Switchsettingreminder();
    return Column(
      children: [
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
                        color: tColor,
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
           padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 15.0),
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
          padding: const EdgeInsets.only(left: 10, right: 10),
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 251, 252, 251),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text(
              'Snake Plant Sansevieria',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 60, 100, 73)),
                  
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 20, bottom: 60),
        //   child: Center(
        //     child: Container(
        //       width: MediaQuery.of(context).size.width - 50,
        //       height: 60,
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(25), color: btColor),
        //       child: ElevatedButton(
        //         onPressed: () {},
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: const Color.fromARGB(255, 71, 133, 89),
        //           foregroundColor: Colors.white,
        //         ),
        //         child: const Text(
        //           'Repeat',
        //           style: TextStyle(
        //             color: Color.fromARGB(255, 231, 236, 233),
        //             fontSize: 25,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
