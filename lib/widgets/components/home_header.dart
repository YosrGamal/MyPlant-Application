import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';

class HeaderWithSearchBar extends StatelessWidget {
  final Size size;
  const HeaderWithSearchBar({required this.size, super.key});

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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffE6E6E6),
                            radius: 30,
                            child: Icon(
                              Icons.person,
                              color: Color(0xffCCCCCC),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: defaultPadding + 7, top: 180),
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
                                  fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 54,
                      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 239, 237, 237),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
