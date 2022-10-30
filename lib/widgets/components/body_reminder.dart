// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/switch_reminder.dart';

import 'package:go_router/go_router.dart';

class BodyReminder extends StatelessWidget {
  final String name;
  final String imgUrl;

  const BodyReminder({required this.name, required this.imgUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green[800],
            ),
            onPressed: () {
              context.go('/library');
            },
          )),
      body: SafeArea(
        child: Stack(children: <Widget>[
          const Switchreminder(),
          Container(
            margin: const EdgeInsets.only(top: 25), //imagse
            height: 180,
            width: 380,
            child: Image.asset(
              imgUrl,
              fit: BoxFit.cover,
              height: 100,
              width: 20,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 220),
            padding: const EdgeInsets.only(left: 45, right: 45),
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 251, 252, 251),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                name,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 40, 65, 48)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 297),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/water.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 345),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/prune.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 393),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/mist.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 440),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/fertilizer.png"),
                  fit: BoxFit.contain),
            ),
          ),
        ]),
      ),
    );
  }
}
