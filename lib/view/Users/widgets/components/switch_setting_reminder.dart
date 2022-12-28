// import 'package:flutter/material.dart';
// import 'package:my_plant_application/view/Users/widgets/components/time_picker.dart';

// class Switchsettingreminder extends StatefulWidget {
//   const Switchsettingreminder({super.key});
//   @override
//   State<Switchsettingreminder> createState() => _SwitchsettingreminderState();
// }
// class _SwitchsettingreminderState extends State<Switchsettingreminder> {
//   bool s1 = false, s2 = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.only(top: 290, left: 50, right: 20),
//         alignment: Alignment.topLeft,
//         child: ListView(
//           children: [
//              SwitchListTile(
//               activeColor: const Color.fromARGB(255, 67, 105, 68),
//               value: s1,
//               onChanged: (bool value) {
//                 setState(() {
//                   s1 = value;
//                   showModalBottomSheet(
//                       isScrollControlled: true,
//                       context: context,
//                       shape: const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.vertical(
//                               top: Radius.circular(25.0))),
//                       builder: (BuildContext context) {
//                         return const SizedBox(
//                           height: 100,
//                           child: Time(),
//                         );
//                       });
//                 });
//               },
//               title: const Text(
//                 'Morning',
//                 style: TextStyle(
//                     color: Color.fromARGB(255, 60, 100, 73), fontSize: 22),
//               ),
//             ),
//             SwitchListTile(
//               activeColor: const Color.fromARGB(255, 67, 105, 68),
//               value: s2,
//               onChanged: (bool value) {
//                 setState(() {
//                   s2 = value;
//                   showModalBottomSheet(
//                       isScrollControlled: true,
//                       context: context,
//                       shape: const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.vertical(
//                               top: Radius.circular(25.0))),
//                       builder: (BuildContext context) {
//                         return const SizedBox(
//                           height: 100,
//                           child: Time(),
//                         );
//                       });
//                 });
//               },
//               title: const Text(
//                 'Evening',
//                 style: TextStyle(
//                     color: Color.fromARGB(255, 60, 100, 73), fontSize: 22),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }