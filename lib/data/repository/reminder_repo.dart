import 'package:cloud_firestore/cloud_firestore.dart';

Future createReminder({
    required String taskname,
    required String plantname,
    required String date,
    required bool repeat,
}) async {
  final remindInstance = FirebaseFirestore.instance.collection('reminders').doc();

  final remindData = {
    'taskname': taskname,
    'plantname': plantname,
    'date': date,
    'repeat': repeat,
  };
  await remindInstance.set(remindData);
}
