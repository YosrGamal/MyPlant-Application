import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Footer_edit_profile.dart';
import 'header_edit_profile.dart';

class EditProfileBody extends StatefulWidget {
  EditProfileBody({super.key});

  @override
  State<EditProfileBody> createState() => _EditProfileBodyState();
}

class _EditProfileBodyState extends State<EditProfileBody> {
  bool isHiddenPassword_TFF1 = true;

  final _formKey = GlobalKey<FormState>();
  final newNickname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          EditProfileHeader(),
          Positioned(
              child: Row(
            children: [
              const SizedBox(height: 100), //the space before settings

              InkWell(
                  //instead of TextField
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              const SizedBox(width: 100), //the space before settings
            ],
          )),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: const Text('Edit Profile',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 330),
            child: const Text('Change Avatar',
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 380),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: TextFormField(
                controller: newNickname,
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
                  hintText: 'New Username',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 450),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: TextFormField(
                obscureText: isHiddenPassword_TFF1,
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
                        isHiddenPassword_TFF1 = !isHiddenPassword_TFF1;
                      });
                    },
                    child: Icon(isHiddenPassword_TFF1
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                  hintText: 'Enter Password',
                ),
              ),
            ),
          ),
          EditProfileFooter(
            newNickname: newNickname,
            formKey: _formKey,
          ),
          Positioned(
            top: 640,
            left: 0,
            child: Image.asset('assets/images/Plant down left.png'),
          ),
        ],
      ),
    );
  }
}
