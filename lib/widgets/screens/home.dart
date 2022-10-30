import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/body.dart';
import 'package:my_plant_application/widgets/components/bottom_navbar.dart';
import 'package:my_plant_application/widgets/components/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
