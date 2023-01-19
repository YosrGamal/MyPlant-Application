import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

final double coverHeight = 280;
final double profileHeight = 144;

class EditProfileHeader extends StatelessWidget {
  const EditProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var top = 100;

    return Stack(
      children: [
        buildCoverImage(),
        Positioned(
            right: 25, child: Image.asset('assets/images/Hanging p2.png')),
        Positioned(top: 130, right: 120, child: buildProfileImage()),
        Positioned(top: 130, right: 120, child: Background()),
        Positioned(top: 130, right: 120, child: Border()),
        Positioned(
          top: 50,
          left: -30,
          child: InkWell(
              //instead of TextField
              onTap: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ),
      ],
    );
  }
}

Widget buildCoverImage() => Container(
      decoration: const BoxDecoration(
        color: Color(0xFFffffff),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
          )
        ],
      ),
      child: Image.asset(
        'assets/images/backGreen.png',
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,
      ),
    );

Widget buildProfileImage() => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(blurRadius: 2, color: Colors.black, spreadRadius: 0.1)
        ],
      ),
      child: CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage(
          'assets/images/profilepic.png',
        ),
      ),
    );

Widget Background() => CircleAvatar(
    radius: 70, backgroundColor: Color.fromRGBO(255, 255, 255, 0.1));

Widget Border() => CircleAvatar(
    radius: (profileHeight / 2),
    backgroundColor: Color.fromRGBO(255, 255, 255, 0.3));
