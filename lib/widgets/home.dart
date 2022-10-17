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
      body: Stack(
        children: [
          Positioned(
            top: 200,
            left: 10,
            right: 10,
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                      ), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    labelText: 'Search'),
              ),
              margin: const EdgeInsets.all(20.0),
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
