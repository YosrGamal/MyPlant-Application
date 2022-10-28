<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/body_task.dart';
=======
// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:flutter/material.dart';
>>>>>>> ef4a30cf78b73a0ab3779b6266f2059cae533dc3
import 'package:my_plant_application/widgets/components/bottom_navbar.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: BodyTask(),
      bottomNavigationBar: BottomNavBar(),
=======
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            //alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(top: 300),
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Plant down right.png"),
                  fit: BoxFit.contain),
            ),
          ),
          // ignore: duplicate_ignore
          Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
            // ignore: prefer_const_constructors
            child: Text(
              "Tasks ",
              //textAlign: TextAlign.left,
              style: TextStyle(
                  height: 3,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 60, 100, 73)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100),
            padding: const EdgeInsets.only(left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            height: 45,
            //alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color.fromARGB(255, 251, 252, 251),
                // ignore: deprecated_member_use
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text(
                'Today',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 60, 100, 73)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 200),
            padding: const EdgeInsets.only(left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            height: 40,
            //alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color.fromARGB(255, 251, 252, 251),
                // ignore: deprecated_member_use
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                'Water',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 60, 100, 73)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 255),
            padding: const EdgeInsets.only(left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            height: 40,
            //alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color.fromARGB(255, 251, 252, 251),
                // ignore: deprecated_member_use
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                'Fertilizer',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 60, 100, 73)),
              ),
            ),
          ),
        ]),
      ),
>>>>>>> ef4a30cf78b73a0ab3779b6266f2059cae533dc3
    );
  }
}
