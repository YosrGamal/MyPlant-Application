import 'package:flutter/material.dart';
import 'package:my_plant_application/view/Users/widgets/components/body_task.dart';
import 'package:my_plant_application/view/Users/widgets/components/bottom_navbar.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyTask(),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
