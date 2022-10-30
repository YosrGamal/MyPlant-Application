import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/librarybody.dart';
import 'package:my_plant_application/widgets/components/bottom_navbar.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LibraryBody(),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
