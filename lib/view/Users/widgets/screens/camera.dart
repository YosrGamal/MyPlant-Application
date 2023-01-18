import 'dart:ffi';

// ignore: unused_import
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:my_plant_application/view/Users/widgets/tfmodel/chooseimage.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return const ChooseImage();
  }
}
