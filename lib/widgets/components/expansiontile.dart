import 'package:flutter/material.dart';
class Expansiontile extends StatefulWidget {
  const Expansiontile({super.key});
  @override
  State<Expansiontile> createState() => _ExpansiontileState();
}
class _ExpansiontileState extends State<Expansiontile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
       //padding: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.fromLTRB(5.0, 50.0, 0.0, 0.0),
        child: Column(
          children: const [
          ExpansionTile(
          title: Text('Water',
            textAlign: TextAlign.center,
                             style: TextStyle(
                    color: Color.fromARGB(255, 83, 118, 94),
                     fontSize: 22,
                    
                    ),
          ),
          //subtitle: Text('Trailing expansion arrow icon'),
          children: [ListTile(title: Text('Snake Plant Sansevieria 7:00 am',
           textAlign: TextAlign.center,
                             style: TextStyle(
                    color: Color.fromARGB(255, 83, 118, 94)
                    ),
          ))],
        ),
         ExpansionTile(
          title: Text('Prune',
           textAlign: TextAlign.center,
                             style: TextStyle(
                    color: Color.fromARGB(255, 83, 118, 94),
                     fontSize: 22,
                    ),),
          //subtitle: Text('Trailing expansion arrow icon'),
          children: [ListTile(title: Text('Snake Plant Sansevieria 7:00 am',
           textAlign: TextAlign.center,
                             style: TextStyle(
                    color: Color.fromARGB(255, 83, 118, 94)
                    ),
          ))],
        ),
         ExpansionTile(
          title: Text('Fertilizer',
           textAlign: TextAlign.center,
                             style: TextStyle(
                    color: Color.fromARGB(255, 83, 118, 94),
                     fontSize: 22,
                    ),
                    ),
          //subtitle: Text('Trailing expansion arrow icon'),
          children: [ListTile(title: Text('Snake Plant Sansevieria 7:00 am',
           textAlign: TextAlign.center,
                             style: TextStyle(
                    color: Color.fromARGB(255, 83, 118, 94),
                    ),
          ))],
        ),
          ],
        ),
      ),
    );
  }
}