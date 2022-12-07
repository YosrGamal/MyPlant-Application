import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/widgets/tfmodel/loadingscreen.dart';
import 'package:my_plant_application/widgets/tfmodel/showingresult.dart';
// import 'package:tflite/tflite.dart';

class ChooseImage extends StatefulWidget {
  const ChooseImage({super.key});

  @override
  State<ChooseImage> createState() => _ChooseImageState();
}

class _ChooseImageState extends State<ChooseImage> {
  File? image;

  Future uploadImage() async {
    // final path = '';
    // final file = File(image!.path);
  }

  Future pickImage(source) async {
    try {
      final img = await ImagePicker().pickImage(source: source);
      if (img == null) return null;

      final imageTemporary = File(img.path);
      setState(() {
        // Loading(loading: true);
        image = imageTemporary;
      });

      // classifyImage(img);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  // Future classifyImage(XFile image) async {
  //   var output = await Tflite.runModelOnImage(
  //       path: image.path,
  //       numResults: 19,
  //       threshold: 0.5,
  //       imageMean: 127.5,
  //       imageStd: 127.5);
  //   setState(() {
  //     Loading(loading: false);
  //     Result(output: output);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 700),
      child: Column(
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: btColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: const Text('Pick From Gallery',
                  style: TextStyle(fontSize: 20, fontFamily: 'Inter')),
              onPressed: (() {
                pickImage(ImageSource.gallery);
              })),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: btColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: const Text('Open Camera',
                  style: TextStyle(fontSize: 20, fontFamily: 'Inter')),
              onPressed: (() {
                pickImage(ImageSource.camera);
              }))
        ],
      ),
    );
  }
}
