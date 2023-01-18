import 'package:flutter/material.dart';
import 'package:my_plant_application/domain/remind.dart';
import 'package:my_plant_application/view/Users/widgets/screens/reminder.dart';

class Expansiontile extends StatefulWidget {  
  Expansiontile({super.key});
  @override
  State<Expansiontile> createState() => _ExpansiontileState();
}

class _ExpansiontileState extends State<Expansiontile> {
  

  // String plantname = '';
  // String date = '';
  // String taskname = '';
  // bool isloaded = false;
  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  // Future<void> getData() async {
  //   plantname = await getplantId();
  //   if (plantname.isNotEmpty) {
  //     // ignore: avoid_print
  //     print(' $plantname');
  //     setState(() {
  //       isloaded = true;
  //     });
  //   }
  //   date = await getdate();
  //   if (date.isNotEmpty) {
  //     // ignore: avoid_print
  //     print(' $date');
  //     setState(() {
  //       isloaded = true;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        
        //padding: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.fromLTRB(5.0, 50.0, 0.0, 0.0),
        child: Column(
          children: const [
            ExpansionTile(
              title: Text(
                'Water',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 83, 118, 94),
                  fontSize: 22,
                ),
              ),
              // subtitle: Text('Trailing expansion arrow icon'),
              children: [
                ListTile(
                    title: Text(
                  'Snake Plant 7:00 am',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromARGB(255, 83, 118, 94)),
                ))
              ],
            ),
            ExpansionTile(
              title: Text(
                'Prune',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 83, 118, 94),
                  fontSize: 22,
                ),
              ),
              children: [
                ListTile(
                    title: Text(
                  'Snake Plant 7:00 am',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromARGB(255, 83, 118, 94)),
                ))
              ],
            ),
          
          ],
        ),
      ),
   );
  }
}

  // return Visibility(
  //     visible: isloaded,
  //     replacement: const CircularProgressIndicator(),
  //     child: Column(
  //       children: [
  //         Stack(
  //           children: [
  //             Container(
  //               margin: const EdgeInsets.only(bottom: defaultPadding * 2.5),
  //               height: widget.size.height * 0.4,
  //               child: Stack(
  //                 children: [
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         ' $plantname',
  //                         style: const TextStyle(
  //                           fontSize: 30,
  //                           color: tColor,
  //                           fontFamily: 'Inter',
  //                           fontWeight: FontWeight.normal,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );