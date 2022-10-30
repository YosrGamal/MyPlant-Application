import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/gridview_plants.dart';
import 'package:my_plant_application/widgets/components/home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Bg.png"),
                    fit: BoxFit.contain),
              ),
            ),
            Container(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.only(top: 250),
              height: MediaQuery.of(context).size.height - 50,
              width: double.infinity,
              child: const PlantsGrid(),
            ),
            HeaderWithSearchBar(size: size),
          ]),
        ],
      ),
    );
  }
}
