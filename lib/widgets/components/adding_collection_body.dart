import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/gridview_plants.dart';
import 'package:my_plant_application/widgets/components/header_adding_collection.dart';
import 'package:my_plant_application/widgets/components/home_header.dart';

class AddingCollectionBody extends StatelessWidget {
  const AddingCollectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Container(
              padding: EdgeInsets.only(top: 250),
              height: MediaQuery.of(context).size.height - 80,
              width: double.infinity,
              child: PlantsGrid(),
            ),
            HeaderAddingCollections(size: size),
          ]),
        ],
      ),
    );
  }
}
