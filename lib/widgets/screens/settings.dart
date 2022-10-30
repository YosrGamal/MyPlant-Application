// ignore: unused_import
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/widgets/components/bottom_navbar.dart';
import 'package:go_router/go_router.dart';

// ignore: camel_case_types
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

// ignore: camel_case_types
class _SettingsState extends State<Settings> {
  bool s1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const BottomNavBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Plant down right.png"),
              fit: BoxFit.contain),
        ),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.settings_outlined,
                    color: Color(0XFFA0AE88),
                  ),
                  const SizedBox(height: 40),
                  const Text("Settings",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: tColor)),
                ]),
            const Divider(height: 20, thickness: 1),
            const SizedBox(height: 20),
            BuildAccountOption(context, "Edit Profile"),
            BuildAccountOption(context, "Change password"),
            BuildAccountOption(context, "About Us"),
            BuildAccountOption(context, "Privacy Policy"),
            BuildAccountOption(context, "How to use"),
            const Divider(height: 20, thickness: 1),
            SwitchListTile(
              activeColor: const Color.fromARGB(255, 67, 105, 68),
              value: s1,
              onChanged: (bool value) {
                setState(() {
                  s1 = value;
                });
              },
              title: const Text(
                'Push Notification',
                style: TextStyle(
                    color: Color.fromARGB(255, 60, 100, 73), fontSize: 22),
              ),
            ),
            InkWell(
              onTap: () {
                context.go('/');
              },
              child: const Text(
                "LogOut",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: avoid_types_as_parameter_names
  GestureDetector BuildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600]),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
