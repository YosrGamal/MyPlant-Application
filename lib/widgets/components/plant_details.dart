import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:my_plant_application/model/logic.dart';

class PlantDetail extends StatelessWidget {
  final PlantModel plant;
  const PlantDetail({required this.plant, super.key});
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
              tag: plant.imageUrl,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    plant.imageUrl,
                    fit: BoxFit.cover,
                    height: 300,
                    width: 20,
                  ),
                ),
              )),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              plant.name,
              style: const TextStyle(
                  color: tColor, fontFamily: 'Inter', fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
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
                    backgroundColor: btColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  child: const Text('Set Reminder'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 50),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25), color: btColor),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 187, 43, 32),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  child: const Text('Remove'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
