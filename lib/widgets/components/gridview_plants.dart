import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/itemcard.dart';
import '../../model/plant.dart';

class PlantsGrid extends StatelessWidget {
  PlantsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      const SizedBox(
        height: 15.0,
      ),
      Container(
          padding: const EdgeInsets.all(15.0),
          width: MediaQuery.of(context).size.width - 40,
          height: MediaQuery.of(context).size.height - 80,
          child: FutureBuilder(
            future: FirebaseFirestore.instance.collection('plants').get(),
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
                        name: document['name'],
                        imageUrl: document['image']);
                    return ItemCard(
                      plant: myplant,
                    );
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
