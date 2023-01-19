import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/data/repository/image_rep.dart';

import '../../../../constants.dart';
import '../tfmodel/chooseimage.dart';

Future<String>? imageurl;

class EditProfileFooter extends StatelessWidget {
  EditProfileFooter(
      {super.key, required this.newNickname, required this.formKey});

  final GlobalKey<FormState> formKey;
  final TextEditingController newNickname;

  File? image;

  Future<String>? imageurl;

  Future<String> uploadImage() async {
    Future<String>? url;
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child("images" + DateTime.now().toString());
    UploadTask uploadTask = ref.putFile(image!);
    uploadTask.whenComplete(() {
      url = ref.getDownloadURL();
    }).catchError((onError) {
      print(onError);
    });
    print(url);
    return url!;
  }

  Future pickImage(source) async {
    try {
      final img = await ImagePicker().pickImage(source: source);
      if (img == null) return null;

      final imageTemporary = File(img.path);
      // setState(() {
      // Loading(loading: true);
      image = imageTemporary;
      // });

      // classifyImage(img);
    } on PlatformException catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 330,
        right: 80,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: btColor,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          child: const Text('Change profile picutre',
              style: TextStyle(fontSize: 20, fontFamily: 'Inter')),
          onPressed: () {
            pickImage(ImageSource.gallery);
            imageUrl = uploadImage();
            print(imageUrl);
          },
        ),
      ),
    ]);
  }
}
