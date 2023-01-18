import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:my_plant_application/data/repository/reminder_repo.dart';
import 'package:my_plant_application/domain/plant.dart';
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
     Plant plant;
     final TextEditingController timeController = TextEditingController();

 Switchsettingreminder({super.key, required this.plant});
  @override
  State<Switchsettingreminder> createState() => _SwitchsettingreminderState();
}
class _SwitchsettingreminderState extends State<Switchsettingreminder> {
  bool s1 = false, s2 = false;
  @override
  Widget build(BuildContext context) { 
   
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(50.0, 326.0, 0.0, 0.0),
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
                  context.go('/start');
                    createReminder(
                      taskname: 'Water',
                      plantname: widget.plant.name!,
                      date: date.toString(),
                      repeat: false,
                  );
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
                   context.go('/start');
                   createReminder(
                    taskname: 'Water',
                    plantname: widget.plant.name!,
                    date: date.toString(),
                    repeat: false,
                  );
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
