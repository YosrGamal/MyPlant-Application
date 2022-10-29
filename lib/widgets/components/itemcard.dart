import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/model/logic.dart';
import 'package:my_plant_application/widgets/components/plant_details.dart';

class ItemCard extends StatelessWidget {
  final PlantModel plant;
  final VoidCallback press;

  const ItemCard({required this.plant, required this.press, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  plant.isfavorite
                      ? Icon(Icons.favorite, color: Colors.red[800])
                      : Icon(Icons.favorite_border, color: Colors.red[800])
                ],
              ),
            ),
            Hero(
              tag: plant.imageUrl,
              child: Container(
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: AssetImage(plant.imageUrl), fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(height: 7.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                plant.name,
                style: const TextStyle(
                    color: tColor, fontFamily: 'Inter', fontSize: 14),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
