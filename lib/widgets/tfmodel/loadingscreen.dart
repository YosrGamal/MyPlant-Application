// import 'package:flutter/material.dart';
// import 'package:tflite/tflite.dart';
// import 'package:my_plant_application/widgets/tfmodel/showingresult.dart';

// class Loading extends StatefulWidget {
//   bool? loading = false;
//   Loading({this.loading, super.key});

//   @override
//   State<Loading> createState() => _LoadingState();
// }

// class _LoadingState extends State<Loading> {
//   @override
//   void initState() {
//     super.initState();
//     widget.loading = true;

//     loadModel().then((value) {
//       setState(() {
//         widget.loading = false;
//       });
//     });
//   }

//   Future loadModel() async {
//     await Tflite.loadModel(
//       model: "assets/tfmodel/model_unquant.tflite",
//       labels: "assets/tfmodel/labels.txt",
//     );
//   }

//   @override
//   void dispose() {
//     Tflite.close();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return widget.loading!
//         ? Container(
//             alignment: Alignment.center,
//             child: const CircularProgressIndicator(),
//           )
//         : Result();
//   }
// }
