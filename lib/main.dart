// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_plant_application/widgets/home.dart';
import 'package:my_plant_application/widgets/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const Home(),
      },
    );
  }
}
