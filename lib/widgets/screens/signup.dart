// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
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
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.go('/');
                          }
                        },
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
