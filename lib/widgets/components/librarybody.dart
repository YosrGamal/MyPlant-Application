import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/widgets/components/gridview_plants.dart';
import 'package:my_plant_application/widgets/components/header_with_search_box.dart';
import 'package:my_plant_application/widgets/components/headerlibrary.dart';

class LibraryBody extends StatelessWidget {
  const LibraryBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Image.asset(
                'assets/images/Hanging p4.png',
                height: 170,
                width: 400,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 250),
              height: MediaQuery.of(context).size.height - 50,
              width: double.infinity,
              child: const PlantsGrid(),
            ),
            Headerlibrary(size: size),
          ]),
        ],
      ),
    );
  }
}
