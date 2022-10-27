import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/widgets/components/plant_details.dart';

class PlantsGrid extends StatefulWidget {
  const PlantsGrid({super.key});

  @override
  State<PlantsGrid> createState() => _PlantsGridState();
}

class _PlantsGridState extends State<PlantsGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const SizedBox(height: 15.0),
        Container(
          padding: const EdgeInsets.all(15.0),
          width: MediaQuery.of(context).size.width - 30,
          height: MediaQuery.of(context).size.width - 50,
          child: GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 0.8,
            children: [
              /*_buildCard('$name', '$imgPath', '$isfav', context)*/
              _buildCard('SnakePlant Sansevieria',
                  'assets/images/SnakePlant-Sansevieria.jpg', true, context),
              _buildCard('SnakePlant Sansevieria',
                  'assets/images/SnakePlant-Sansevieria.jpg', true, context),
              _buildCard('SnakePlant Sansevieria',
                  'assets/images/SnakePlant-Sansevieria.jpg', true, context),
              _buildCard('SnakePlant Sansevieria',
                  'assets/images/SnakePlant-Sansevieria.jpg', true, context)
            ],
          ),
        )
      ]),
    );
  }
}

Widget _buildCard(String name, String imgPath, bool isFavorite, context) {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                PlantDetail(assetPath: imgPath, plantname: name)));
      },
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
                isFavorite
                    ? Icon(Icons.favorite, color: Colors.red[800])
                    : Icon(Icons.favorite_border, color: Colors.red[800])
              ],
            ),
          ),
          Hero(
            tag: imgPath,
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 7.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: const TextStyle(
                  color: tColor, fontFamily: 'Inter', fontSize: 14),
            ),
          )
        ]),
      ),
    ),
  );
}
