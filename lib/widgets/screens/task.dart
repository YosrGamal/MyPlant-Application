import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/body_task.dart';
import 'package:my_plant_application/widgets/components/bottom_navbar.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyTask(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
