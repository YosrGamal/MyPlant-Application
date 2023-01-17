// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:my_plant_application/constants.dart';
// import 'package:my_plant_application/view/Users/widgets/tfmodel/chooseimage.dart';

// class Result extends StatefulWidget {
//   List? output;
//   Result({this.output, super.key});

//   @override
//   State<Result> createState() => _ResultState();
// }

// class _ResultState extends State<Result> {
//   File? image;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           image == null ? Container() : Image.file(image!),
//           const SizedBox(height: 20),
//           widget.output != null
//               ? Text("${widget.output![0]["label"]}",
//                   style: TextStyle(color: tColor, fontSize: 28))
//               : Container()
//         ],
//       ),
//     );
//   }
// }
