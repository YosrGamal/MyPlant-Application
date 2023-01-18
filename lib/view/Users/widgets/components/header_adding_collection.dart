import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/data/db_helper.dart';
import 'package:my_plant_application/data/repository/plant_rep.dart';
import 'package:my_plant_application/view/Users/widgets/tfmodel/chooseimage.dart';

class HeaderAddingCollections extends StatefulWidget {
  HeaderAddingCollections({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  State<HeaderAddingCollections> createState() =>
      _HeaderAddingCollectionsState();
}

class _HeaderAddingCollectionsState extends State<HeaderAddingCollections> {
  DBHelper dbhelper = DBHelper();

  List<Map<String, dynamic>> plants = [];
  bool isloading = true;

  void refreshPlants() async {
    final data = await DBHelper.getPlants();
    setState(() {
      plants = data;
      isloading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    refreshPlants();
    print("number of plants ${plants.length}");
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController imageurlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Text(
                  'Cancel',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 17,
                        color: tColor,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              InkWell(
                child: Text(
                  'Add',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 17,
                        color: tColor,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                onTap: () async {
                  createPlant(
                      name: nameController.text,
                      image: imageUrl.toString(),
                      isfav: false);

                  //sqlite database
                  // await addPlant();

                  // idController.text = '';
                  // nameController.text = '';
                  // imageurlController.text = '';

                  // Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            children: [
              Text(
                'Add Plant',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: tColor,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Container(
          alignment: Alignment.center,
          height: 54,
          margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          decoration: BoxDecoration(
            color: bpColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          height: 54,
          margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          decoration: BoxDecoration(
            color: bpColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
                hintText: "Plant name",
                hintStyle: TextStyle(
                  color: tColor.withOpacity(0.5),
                  fontFamily: "Inter",
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          height: 54,
          margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          decoration: BoxDecoration(
            color: bpColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: imageurlController,
            decoration: InputDecoration(
                hintText: "Plant image url",
                hintStyle: TextStyle(
                  color: tColor.withOpacity(0.5),
                  fontFamily: "Inter",
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
