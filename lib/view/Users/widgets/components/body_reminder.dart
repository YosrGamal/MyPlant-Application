import 'package:flutter/material.dart';
import 'package:my_plant_application/domain/plant.dart';
import 'package:my_plant_application/view/Users/widgets/components/switch_reminder.dart';

class BodyReminder extends StatelessWidget {
  final Plant plant;
  const BodyReminder({required this.plant, super.key});
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
              Navigator.pop(context);
            },
          )),
      body: SafeArea(
        child: Stack(children: [
          Switchreminder(plant: plant),
          Container(
            padding: const EdgeInsets.fromLTRB(100.0, 10.0, 50.0, 0.0),
            height: 210,
            width: 340,
            child: Image.network(
              plant.imageUrl!,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 220),
            padding: const EdgeInsets.only(left: 45, right: 45),
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color.fromARGB(255, 251, 252, 251),
                // ignore: deprecated_member_use
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                plant.name!,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 40, 65, 48)),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 302),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/water.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 355),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/prune.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 415),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/mist.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 470),
            padding: const EdgeInsets.all(60),
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/icons/fertilizer.png"),
                  fit: BoxFit.contain),
            ),
          ),
        ]),
      ),
    );
  }
}
