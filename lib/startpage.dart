import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/per_navbar.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PerNavbar(),
    );
  }
}
