import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/model/plantlogic.dart';
import 'package:favorite_button/favorite_button.dart';

class ItemCard extends StatelessWidget {
  final PlantModel plant;
  final VoidCallback press;

  const ItemCard({required this.plant, required this.press, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black12,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(
            children: [
              Stack(children: [
                Hero(
                    tag: plant.imageUrl,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: AspectRatio(
                            aspectRatio: 16 / 16,
                            child: Image.asset(
                              plant.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          )),
                    )),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FavoriteButton(
                        isFavorite: plant.isfavorite,
                        iconSize: 40,
                        iconColor: btColor,
                        valueChanged: (isFavorite) {
                          print('Is Favorite $isFavorite)');
                        },
                      ),
                      // plant.isfavorite
                      //     ? Icon(Icons.favorite, color: Colors.red[800])
                      //     : Icon(Icons.favorite_border, color: Colors.red[800])
                    ],
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  plant.name,
                  style: const TextStyle(
                      color: tColor, fontFamily: 'Inter', fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
