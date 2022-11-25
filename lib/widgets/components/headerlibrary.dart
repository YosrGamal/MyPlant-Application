import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/widgets/components/adding_collection_body.dart';
import 'package:my_plant_application/widgets/components/header_adding_collection.dart';
import 'package:my_plant_application/widgets/components/librarytab.dart';

class Headerlibrary extends StatelessWidget {
  const Headerlibrary({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: defaultPadding * 2.5),
                height: size.height,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      height: size.height * 0.2,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Text(
                              'My Plants',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(
                                    color: tColor,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 230),
                      child: TabLibrary(),
                    ),
                    Positioned(
                      top: 170,
                      left: 0,
                      right: 60,
                      child: Container(
                        alignment: Alignment.center,
                        height: 54,
                        margin:
                            EdgeInsets.symmetric(horizontal: defaultPadding),
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultPadding),
                        decoration: BoxDecoration(
                          color: bpColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: tColor.withOpacity(0.5),
                                fontFamily: "Inter",
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width - 70,
                      top: 170,
                      child: FloatingActionButton(
                        backgroundColor: icColor,
                        child: Icon(Icons.add),
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25.0))),
                              builder: (BuildContext context) {
                                return const SizedBox(
                                  child: AddingCollectionBody(),
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
