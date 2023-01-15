import 'package:flutter/material.dart';
import 'package:my_plant_application/view/Users/widgets/components/task_tab.dart';

class BodyTask extends StatefulWidget {
  const BodyTask({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _BodyTaskState createState() => _BodyTaskState();
}

class _BodyTaskState extends State<BodyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          const TabTask(),
          Container(
            //alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(top: 350),
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Plant down right.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
            // ignore: prefer_const_constructors
            child: const Text(
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
        ]),
      ),
    );
  }
}
