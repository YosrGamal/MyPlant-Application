// import 'package:flutter/material.dart';

// class TabReminder extends StatefulWidget {
//   const TabReminder({super.key});

//   @override
//   _TabReminderState createState() => _TabReminderState();
// }

// class _TabReminderState extends State<TabReminder>
//     with SingleTickerProviderStateMixin {
//   TabController? _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(length: 2, vsync: this);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _tabController!.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Container(
//               margin: const EdgeInsets.only(top: 275),
//               height: 45,
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.circular(
//                   25.0,
//                 ),
//               ),
//               child: TabBar(
//                 controller: _tabController,
//                 indicator: BoxDecoration(
//                   borderRadius: BorderRadius.circular(
//                     25.0,
//                   ),
//                   color: const Color.fromARGB(255, 124, 161, 126),
//                 ),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.black,
//                 tabs: const [
//                   Tab(
//                     text: 'Reminder',
//                   ),
//                   Tab(
//                     text: 'Note',
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
