import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';

class plantsGrid extends StatefulWidget {
  const plantsGrid({super.key});

  @override
  State<plantsGrid> createState() => _plantsGridState();
}

class _plantsGridState extends State<plantsGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(height: 15.0),
        Container(
          padding: EdgeInsets.all(15.0),
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
      onTap: () {},
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
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.contain),
              ),
            ),
          ),
          SizedBox(height: 7.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style:
                  TextStyle(color: tColor, fontFamily: 'Inter', fontSize: 14),
            ),
          )
        ]),
      ),
    ),
  );
}
