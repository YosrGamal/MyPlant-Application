// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primaryColor: btColor,
        primaryColorLight: icColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: tColor),
      ),
    );
  }
}
