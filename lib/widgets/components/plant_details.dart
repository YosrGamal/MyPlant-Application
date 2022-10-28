import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:go_router/go_router.dart';

class PlantDetail extends StatelessWidget {
  final assetPath, plantname;
  const PlantDetail({this.assetPath, this.plantname});
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
              Navigator.of(context).pop();
            },
          )),
      body: ListView(
        children: [
          const SizedBox(height: 15),
          Hero(
              tag: assetPath,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    assetPath,
                    fit: BoxFit.cover,
                    height: 400,
                    width: 200,
                  ),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              plantname,
              style: const TextStyle(
                  color: tColor, fontFamily: 'Inter', fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200, bottom: 50),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25), color: btColor),
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/reminder');
                  },
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: btColor,
                    // ignore: deprecated_member_use
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  child: Text('Set Reminder'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
