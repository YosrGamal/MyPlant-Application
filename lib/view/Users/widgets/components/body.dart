import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/view/Users/widgets/components/gridview_plants.dart';
import 'package:my_plant_application/view/Users/widgets/components/home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Bg1.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null /* add child content here */,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 100),
              child: SizedBox(
                height: 200,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(width: 5, color: icColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.all(20)),
                  onPressed: () {},
                  child: const Text(
                    'Tap to Identify',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 35, color: btColor),
                  ),
                ),
              ),
            ),
            HeaderWithSearchBar(size: size),
          ]),
        ),
      ],
    );
  }
}
