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
        Positioned(top: 130, right: 120, child: buildProfileImage2()),
        Positioned(top: 130, right: 120, child: buildProfileImage3()),
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

Widget buildProfileImage2() => CircleAvatar(
    radius: 70, backgroundColor: Color.fromRGBO(255, 255, 255, 0.1));

Widget buildProfileImage3() => CircleAvatar(
    radius: (profileHeight / 2),
    backgroundColor: Color.fromRGBO(255, 255, 255, 0.3));
