import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/gridview_plants.dart';
import 'package:my_plant_application/widgets/components/header_adding_collection.dart';
import 'package:my_plant_application/widgets/components/home_header.dart';
import 'package:my_plant_application/widgets/screens/camera.dart';

class AddingCollectionBody extends StatelessWidget {
  const AddingCollectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(children: [
          Container(padding: EdgeInsets.only(left: 110), child: Camera()
              // height: MediaQuery.of(context).size.height - 80,
              // width: double.infinity,
              // child: const PlantsGrid(),

              ),
          HeaderAddingCollections(size: size),
        ]),
      ],
    );
  }
}
