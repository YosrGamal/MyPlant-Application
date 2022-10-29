// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:go_router/go_router.dart';

class Login extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
              child: Text('Log in',
                  style:
                      TextStyle(fontSize: 35.0, fontWeight: FontWeight.normal)),
            )
          ],
        ),
        Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Form(
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
                      labelText: 'Email',
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
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                            .hasMatch(value)) {
                      return 'Please enter correct password';
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
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                SizedBox(height: 100.0),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/home');
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: Color(0XFF588157),
                      // ignore: deprecated_member_use
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text('Login'),
                  ),
                ),
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
            )))
      ],
    )));
  }
}
