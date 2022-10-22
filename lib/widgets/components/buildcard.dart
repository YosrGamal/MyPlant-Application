import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:go_router/go_router.dart';

class Buildcard extends StatelessWidget {
  final name, imgPath;
  final String? plantid;
  final bool? isFavorite;
  const Buildcard(
      {super.key,
      required this.plantid,
      required this.name,
      required this.imgPath,
      this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          var id = plantid;
          context.go(context.namedLocation('/plantdetail/$id/$name/$imgPath',
              params: <String, String>{'imgPath': imgPath, 'name': name}));
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
                  isFavorite!
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
}
