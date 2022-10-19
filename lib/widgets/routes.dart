import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/home.dart';
import 'package:my_plant_application/widgets/login.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const Home(),
      },
    );
  }
}
