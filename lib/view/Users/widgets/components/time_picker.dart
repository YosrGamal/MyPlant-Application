import 'package:flutter/material.dart';
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
class Time extends StatelessWidget {
  const Time({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
                onPressed: () {
                  DatePicker.showTime12hPicker(context, showTitleActions: true,
                      onChanged: (date) {
                  }, onConfirm: (date) {
                  }, currentTime: DateTime.now());
                },
                child: const Text(
                  'Tap to set time',
                  style: TextStyle(color: Color.fromARGB(255, 54, 99, 52)),
                )),
          ],
        ),
      ),
    );
  }
}