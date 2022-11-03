// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:my_plant_application/data/userdata.dart';

import '../../model/userlogic.dart';

class ChangePasswordScreen extends StatefulWidget {
  final UserModel user;
  const ChangePasswordScreen({required this.user, super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isHiddenPassword_TFF1 = true;
  bool isHiddenPassword_TFF2 = true;
  bool isHiddenPassword_TFF3 = true;

  final oldPass = TextEditingController();
  final newPass = TextEditingController();
  final confirmPass = TextEditingController();
  bool Allgood = false;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    oldPass.dispose();
    newPass.dispose();
    confirmPass.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 30), //the space before settings
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                      //instead of Textbutton
                      onTap: () {
                        context.go('/settings');
                      },
                      child: const Text(
                        'Settings',
                        style: TextStyle(
                            color: Color.fromARGB(255, 124, 161, 126),
                            fontFamily: 'Inter',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                const SizedBox(height: 35), //space before change password text
                const Text('Change Password',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 52, 78, 65),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 35),
                //TextField == 1
                TextFormField(
                  controller: oldPass, //controller
                  obscureText: isHiddenPassword_TFF1,

                  validator: (value) {
                    RegExp regex = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])');
                    if (value!.isEmpty) {
                      return 'Please enter a password';
                    } else if (oldPass.text != widget.user.password) {
                      Allgood = false;
                      return 'old password is not correct';
                    } else if (oldPass.text == widget.user.password) {
                      Allgood = true;
                    } else {
                      if (!regex.hasMatch(value)) {
                        return 'Enter valid password';
                      } else {
                        return null;
                      }
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isHiddenPassword_TFF1 = !isHiddenPassword_TFF1;
                        });
                      },
                      child: Icon(isHiddenPassword_TFF1
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    hintText: 'Old Password',
                  ),
                ),
                const SizedBox(height: 15),

                //TextField == 2

                TextFormField(
                  controller: newPass,
                  obscureText: isHiddenPassword_TFF2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isHiddenPassword_TFF2 = !isHiddenPassword_TFF2;
                        });
                      },
                      child: Icon(isHiddenPassword_TFF2
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    hintText: 'new Password',
                  ),
                ),
                const SizedBox(height: 15),

                //TextField == 3
                TextFormField(
                  controller: confirmPass,
                  obscureText: isHiddenPassword_TFF3,
                  validator: (value) {
                    RegExp regex = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])');
                    if (value!.isEmpty) {
                      return 'Please enter a password';
                    } else if (confirmPass.text != newPass.text) {
                      Allgood = false;
                      return 'new passwords do not match';
                    } else if (confirmPass.text == newPass.text) {
                      Allgood = true;
                    } else {
                      if (!regex.hasMatch(value)) {
                        return 'Enter valid password';
                      } else {
                        return null;
                      }
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isHiddenPassword_TFF2 = !isHiddenPassword_TFF2;
                        });
                      },
                      child: Icon(isHiddenPassword_TFF2
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    hintText: 'Confirm new Password',
                  ),
                ),
                const SizedBox(height: 30),

                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: 140,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //when valiadted
                      }
                      if (Allgood) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            widget.user.password = newPass.text;
                            return AlertDialog(
                              // Retrieve the text the that user has entered by using the
                              // TextEditingController.
                              // ignore: prefer_interpolation_to_compose_strings
                              content: Text('password changed from ' +
                                  oldPass.text +
                                  ' to ' +
                                  newPass.text),
                            );
                          },
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: const Color(0XFF588157),
                      // ignore: deprecated_member_use
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    child: const Text('Submit'),
                  ),
                ),

                // TextButton(
                //     style:
                //         TextButton.styleFrom(backgroundColor: Colors.greenAccent),
                //     onPressed: () {},
                //     child: const Text('Submit',
                //         style: TextStyle(color: Colors.white))),

                const SizedBox(height: 20), //the space before settings
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                      //instead of TextField
                      onTap: () {},
                      child: const Text(
                        'Forgot your password?',
                        style: TextStyle(
                            color: Color.fromARGB(255, 124, 161, 126),
                            fontSize: 17,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
