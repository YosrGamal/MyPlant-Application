import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Bg.png"),
                  fit: BoxFit.contain),
            ),
          ),
          const Flexible(
            child: Text(
              "Welcome, ",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
        ]),
      ),
    );
  }
}
