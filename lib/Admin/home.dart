import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:my_plant_application/data/userdata.dart';

class HomeAdmin extends StatelessWidget {
  const HomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: icColor,
      ),
      body: const Center(child: Text('Dashboard')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 100,
              child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: icColor,
                  ),
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: bgColor),
                  )),
            ),
            ListTile(
                title: const Text(
                  'Users',
                  style: TextStyle(
                      fontSize: 20, fontFamily: 'Arial', color: tColor),
                ),
                onTap: () {}),
            ListTile(
                title: const Text(
                  'Database',
                  style: TextStyle(
                      fontSize: 20, fontFamily: 'Arial', color: tColor),
                ),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
