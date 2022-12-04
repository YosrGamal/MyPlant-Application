import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/gridview_plants.dart';
import 'package:my_plant_application/widgets/components/home_header.dart';
import 'package:my_plant_application/data/plantsdata.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Stack(children: [
            Image.asset(
              'assets/images/Bg.png',
              fit: BoxFit.contain,
            ),
            Container(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.only(top: 250),
              height: size.height - 50,
              width: double.infinity,
              child: PlantsGrid(),
            ),
            HeaderWithSearchBar(size: size),
          ]),
        ),
      ],
    );
  }
}
