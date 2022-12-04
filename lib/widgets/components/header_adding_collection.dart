import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';

class HeaderAddingCollections extends StatelessWidget {
  HeaderAddingCollections({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  final textController = TextEditingController();

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
                onTap: () {
                  CollectionReference plants =
                      FirebaseFirestore.instance.collection('plantsLibrary');
                  plants.add({
                    'plant_name': textController.text,
                  });
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
          child: TextField(
            controller: textController,
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
      ],
    );
  }
}
