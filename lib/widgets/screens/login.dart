// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, dead_code

import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:go_router/go_router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                                    ? Icons.visibility
                                    : Icons.visibility_off),
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
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context.go('/home');
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
