import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/widgets/components/gridview_plants.dart';
import 'package:my_plant_application/widgets/components/header_with_search_box.dart';

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
