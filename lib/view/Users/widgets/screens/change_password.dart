// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/body_change_pass.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(resizeToAvoidBottomInset: false, body: ChangePassBody()),
    );
  }
}

void _changePassword(String password) async {
  //Create an instance of the current user.
  var user = await FirebaseAuth.instance.currentUser!;

  //Pass in the password to updatePassword.
  user.updatePassword(password).then((_) {
    print("Successfully changed password");
  }).catchError((error) {
    print("Password can't be changed" + error.toString());
    //This might happen, when the wrong password is in, the user isn't found, or if the user hasn't logged in recently.
  });
}
