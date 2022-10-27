// ignore: unused_import
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

// ignore: camel_case_types
class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                SizedBox(height: 40),
                // ignore: prefer_const_constructors
                Text("Account Settings",
                    // ignore: prefer_const_constructors
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal)),
              ]),
          const Divider(height: 20, thickness: 1),
          const SizedBox(height: 20),
          BuildAccountOption(context, "Edit Profile"),
          BuildAccountOption(context, "change password"),
          BuildAccountOption(context, "About Us"),
          BuildAccountOption(context, "Privacy Policy"),
        ],
      ),
    );
    // ignore: dead_code, unused_element
    // SwitchListTile() {
    //   return Padding(
    //     padding: const EdgeInsets.only(left: 50, right: 40),
    //     child: SwitchListTile(
    //         dense: true,
    //         title: const Text(
    //           'Remember Me',
    //           style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
    //         ),
    //         value: true,
    //         activeColor: kPrimaryColor,
    //         OnChanged: (val) {}),
    //   );
    // }
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
            )
            // ignore: prefer_const_constructors
            ,
            Icon(Icons.arrow_forward_ios, color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
