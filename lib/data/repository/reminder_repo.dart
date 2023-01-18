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


Future<String> getPlantName() async {
  String name;
  String plantnameid = await getplantId();
  DocumentSnapshot reminder =
      await FirebaseFirestore.instance.collection('reminders').doc(plantnameid).get();

  name = reminder.get('plantname');
  return name;
}
Future<String> getdate() async {
  String time;
  String timeRem = await getdate();
  DocumentSnapshot reminder =
      await FirebaseFirestore.instance.collection('reminders').doc(timeRem).get();

  time = reminder.get('date');
  return time;
}


Future<String> getplantId() async {
  List<String> plantnameid = [];
  final snapShot = await FirebaseFirestore.instance
      .collection('reminders')
      .limit(1)
      .get();

  for (var reminder in snapShot.docs) {
    plantnameid.add(reminder.id);
  }

  return plantnameid[0];
}

Future fetchAllPlants() async {
  FirebaseFirestore.instance.collection('reminders').get();
}