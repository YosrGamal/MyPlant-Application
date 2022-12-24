// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, dead_code, depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:my_plant_application/view/Users/widgets/screens/home.dart';
import 'package:my_plant_application/view/Users/widgets/screens/signup.dart';
import 'package:my_plant_application/view/reusable_widget.dart';
import '../../../../domain/user.dart';
import '../components/itemcard.dart';
import '../components/per_navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
//login function

  bool isHiddenPassword = true;

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
                const SizedBox(height: 150),
                Image.asset('assets/images/app_logo.png',
                    width: 170, height: 170),
                Container(
                  padding: EdgeInsets.fromLTRB(35.0, 140.0, 0.0, 0.0),
                  child: Text('Log in',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.normal)),
                )
              ],
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
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
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        obscureText: isHiddenPassword,

                        ///to make the dots in the password

                        validator: (value) {
                          RegExp regex = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])');
                          if (value!.isEmpty) {
                            return 'Please enter a password';
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
                                  isHiddenPassword = !isHiddenPassword;
                                });
                              },
                              child: Icon(isHiddenPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            fillColor: Color(0XFFD3D3D3),
                            hintText: 'Password',
                            labelStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                      SizedBox(height: 100.0),
                      SignInSignUpButton(
                          isLogin: true,
                          onTap: () {
                            FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: EmailController.text,
                                    password: PasswordController.text)
                                .then((value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            }).onError((error, stackTrace) {
                              // ignore: avoid_print
                              print("Error ${error.toString()}");
                            });
                          }),
                      SizedBox(height: 30.0),
                      Center(
                        child: InkWell(
                          child: Text(
                            'Forgot my Password?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 52, 78, 65),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Inter',
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Center(
                        child: InkWell(
                          onTap: () {
                            context.go('/signup');
                          },
                          child: Text(
                            'Register?',
                            style: TextStyle(
                              color: Color.fromARGB(255, 52, 78, 65),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Inter',
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        )));
  }
}
