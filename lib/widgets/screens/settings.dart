// ignore: unused_import
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
      // ignore: prefer_const_constructors
      padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
      child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            // ignore: prefer_const_constructors, duplicate_ignore
            TextField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  // ignore: prefer_const_constructors
                  fillColor: Color(0XFFD3D3D3),
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.sunny, color: Colors.grey[600]),
                  // ignore: prefer_const_constructors
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  // ignore: prefer_const_constructors
                  focusedBorder: UnderlineInputBorder(
                      // ignore: prefer_const_constructors
                      borderSide: BorderSide(color: Colors.grey))),
            ),
          ]),
    );
  }
}
