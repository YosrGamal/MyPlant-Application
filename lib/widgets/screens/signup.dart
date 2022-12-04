// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore: unused_import
// import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:go_router/go_router.dart';
import 'package:my_plant_application/data/userdata.dart';

final NameController = TextEditingController();
final EmailController = TextEditingController();
final PasswordController = TextEditingController();

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

Container? signInSignUpButton(
    BuildContext context, bool isLogin, Function onTap) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
          onPressed: () {
            onTap();
          },
// ignore: sort_child_properties_last
          child: Text(
            isLogin ? 'LOG IN' : 'SIGN UP',
            style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.black26;
                }
                return Colors.white;
              }),

// ignore: dead_code
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))))));
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(height: 20.0),
                const SizedBox(height: 150),
                Image.asset('assets/images/app_logo.png',
                    width: 170, height: 170),
                Container(
                  padding: EdgeInsets.fromLTRB(35.0, 140.0, 0.0, 0.0),
                  child: Text('SignUp',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.normal)),
                ),
              ],
            ),
            Container(
                key: formKey,
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: NameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter correct name';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color(0XFFD3D3D3),
                          hintText: 'Name',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: EmailController,
                      validator: (value) {
                        RegExp regex = RegExp(r'^(?=.*?[@])');
                        if (value!.isEmpty) {
                          return 'Please enter a email';
                        } else {
                          if (!regex.hasMatch(value)) {
                            return 'Enter valid mail includes @';
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
                          fillColor: Color(0XFFD3D3D3),
                          hintText: 'Email',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: PasswordController,
                      obscureText: true,
                      validator: (value) {
                        RegExp regex = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])');
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        } else {
                          if (!regex.hasMatch(value)) {
                            return 'Please enter valid password';
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
                          fillColor: Color(0XFFD3D3D3),
                          hintText: 'Password',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          // ignore: deprecated_member_use
                          primary: Color.fromARGB(255, 52, 78, 65),
                          // ignore: deprecated_member_use
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Text('SignUp'),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child: InkWell(
                        child: Text(
                          'SignUp With Google Account?',
                          style: TextStyle(
                              color: Color.fromARGB(255, 52, 78, 65),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        )));
  }
}
