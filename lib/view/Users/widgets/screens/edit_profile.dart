import 'package:flutter/material.dart';
import 'package:my_plant_application/view/Users/widgets/components/body_edit_profile.dart';

// ignore: camel_case_types
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => EditProfileState();
}

// ignore: camel_case_types
class EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // minimum: const EdgeInsets.all(5),
      child: Scaffold(resizeToAvoidBottomInset: false, body: EditProfileBody()),
    );
  }
}
