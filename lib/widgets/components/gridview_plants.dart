import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_plant_application/data/plantsdata.dart';
import 'package:my_plant_application/widgets/components/itemcard.dart';
import 'package:my_plant_application/widgets/components/plant_details.dart';

import '../../model/plant.dart';

class PlantsGrid extends StatelessWidget {
  PlantsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      Container(
          padding: const EdgeInsets.all(15.0),
          width: MediaQuery.of(context).size.width - 40,
          height: MediaQuery.of(context).size.height - 80,
          child: FutureBuilder(
            future:
                FirebaseFirestore.instance.collection('plantsLibrary').get(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data!.docs.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      mainAxisSpacing: 15.0,
                      crossAxisSpacing: 10.0),

                  itemBuilder: (context, index) {
                    QueryDocumentSnapshot<Map<String, dynamic>> document =
                        snapshot.data!.docs[index];

                    Plant myplant = Plant(
                        id: document.id,
                        name: document['plant_name'],
                        imageUrl: document['plant_image']);
                    return ItemCard(
                        plant: myplant,
                        press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PlantDetail(plant: myplant)),
                            ));
                  },
                );
              }
              return CircularProgressIndicator(
                color: Colors.green,
              );
            },
          )),
    ]);
  }
}

// Widget _buildCard(String name, String imgPath, bool isFavorite, context) {
//   return Padding(
//     padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
//     child: InkWell(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//             builder: (context) =>
//                 PlantDetail(assetPath: imgPath, plantname: name)));
//       },
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15.0),
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.grey.withOpacity(0.2),
//                   spreadRadius: 3.0,
//                   blurRadius: 5.0)
//             ],
//             color: Colors.white),
//         child: Column(children: [
//           Padding(
//             padding: EdgeInsets.all(5.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 isFavorite
//                     ? Icon(Icons.favorite, color: Colors.red[800])
//                     : Icon(Icons.favorite_border, color: Colors.red[800])
//               ],
//             ),
//           ),
//           Hero(
//             tag: imgPath,
//             child: Container(
//               height: 120.0,
//               width: 120.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15.0),
//                 image: DecorationImage(
//                     image: AssetImage(imgPath), fit: BoxFit.cover),
//               ),
//             ),
//           ),
//           const SizedBox(height: 7.0),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               name,
//               style: const TextStyle(
//                   color: tColor, fontFamily: 'Inter', fontSize: 14),
//             ),
//           )
//         ]),
//       ),
//     ),
//   );
// }
