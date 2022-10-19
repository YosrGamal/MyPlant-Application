import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: defaultPadding * 2.5),
              height: size.height * 0.4,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: defaultPadding),
                    height: size.height * 0.6 - 10,
                    child: Row(
                      children: [
                        Text(
                          'Welcome,',
                          style:
                              Theme.of(context).textTheme.headline4?.copyWith(
                                    color: Color.fromARGB(255, 28, 64, 30),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: defaultPadding, top: 170),
                    child: Row(
                      children: [
                        Text(
                          'Explore',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: Color.fromARGB(255, 28, 64, 30),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 54,
                      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 239, 237, 237),
                        borderRadius: BorderRadius.circular(25),
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
                  )
                ],
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Bg.png"),
                    fit: BoxFit.contain),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
