import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
class CustomPicker extends CommonPickerModel {
  String digits(int value, int length) {
    return '$value'.padLeft(length, "0");
  }
  @override
  DateTime finalTime() {
    return currentTime.isUtc
        ? DateTime.utc(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            currentLeftIndex(),
            currentMiddleIndex(),
            currentRightIndex())
        : DateTime(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            currentLeftIndex(),
            currentMiddleIndex(),
            currentRightIndex());
  }
}
class Switchsettingreminder extends StatefulWidget {
  const Switchsettingreminder({super.key});
  @override
  State<Switchsettingreminder> createState() => _SwitchsettingreminderState();
}
class _SwitchsettingreminderState extends State<Switchsettingreminder> {
  bool s1 = false, s2 = false;
  @override
  Widget build(BuildContext context) { 
   
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
              foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 251, 252, 251),
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
        Container(
          padding: const EdgeInsets.fromLTRB(50.0, 90.0, 0.0, 0.0),
        child:  SwitchListTile(
              activeColor: const Color.fromARGB(255, 67, 105, 68),
              value: s1,
              
              onChanged: (bool value)
               {
                 DatePicker.showTime12hPicker(context, showTitleActions: true,
                    theme: const DatePickerTheme(
                          headerColor: Color.fromARGB(255, 77, 114, 87),
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          itemStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          doneStyle:
                              TextStyle(color: Colors.white, fontSize: 16)),
                      onChanged: (date) {
                  }, onConfirm: (date) {
                  }, currentTime: DateTime.now());
                setState(() {
                  s1 = value;
                }); 
              }, 
               
              title: const Text(
                'Morning',
                style: TextStyle(
                    color: Color.fromARGB(255, 60, 100, 73), fontSize: 22),
              ),
            ),),
            Container(
             padding: const EdgeInsets.fromLTRB(50.0, 10.0, 0.0, 0.0),
            child:SwitchListTile(
              activeColor: const Color.fromARGB(255, 67, 105, 68),
              value: s2,
              onChanged: (bool value) {
                                 DatePicker.showTime12hPicker(context, showTitleActions: true,
                    theme: const DatePickerTheme(
                          headerColor: Color.fromARGB(255, 77, 114, 87),
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          itemStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          doneStyle:
                              TextStyle(color: Colors.white, fontSize: 16)),
                      onChanged: (date) {
                  }, onConfirm: (date) {
                  }, currentTime: DateTime.now());
                setState(() {
                  s2 = value;
                });
              },
              title: const Text(
                'Evening',
                style: TextStyle(
                    color: Color.fromARGB(255, 60, 100, 73), fontSize: 22),
              ),
            ),),
      ],
    );
  }
}
