import 'package:flutter/material.dart';
import 'package:my_plant_application/view/Users/widgets/components/header_adding_collection.dart';
import 'package:my_plant_application/view/Users/widgets/tfmodel/chooseimage.dart';

class AddingCollectionBody extends StatelessWidget {
  const AddingCollectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(children: [
          HeaderAddingCollections(size: size),
          Container(padding: EdgeInsets.only(left: 110), child: ChooseImage()
              // height: MediaQuery.of(context).size.height - 80,
              // width: double.infinity,
              // child: const PlantsGrid(),

              ),
        ]),
      ],
    );
  }
}
