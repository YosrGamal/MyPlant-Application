import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../model/userlogic.dart';

// ignore: camel_case_types
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => EditProfileState();
}

bool isHiddenPassword_TFF1 = true;

// ignore: camel_case_types
class EditProfileState extends State<EditProfile> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  final _formKey = GlobalKey<FormState>();
  final newNickname = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    newNickname.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(5),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: buildTop(),
      ),
    );
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;

    return Form(
      key: _formKey,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          buildCoverImage(),
          Positioned(
              right: 25, child: Image.asset('assets/images/Hanging p2.png')),
          Positioned(top: top, child: buildProfileImage()),
          Positioned(top: top, child: buildProfileImage2()),
          Positioned(top: top, child: buildProfileImage3()),
          Positioned(
              child: Row(
            children: [
              const SizedBox(height: 100), //the space before settings

              InkWell(
                  //instead of TextField
                  onTap: () {
                    context.go('/settings');
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
                        shadows: [
                          Shadow(
                            blurRadius: 1,
                            color: Colors.black,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                  )),
              const SizedBox(width: 220), //the space before settings
            ],
          )),
          Container(
            margin: const EdgeInsets.only(top: 120),
            child: const Text('Edit Profile',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 380),
            child: const Text('Change Avatar',
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 1,
                      color: Colors.black,
                      offset: Offset(1, 1),
                    ),
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 425),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: TextFormField(
                controller: newNickname, //controller

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
                  hintText: 'new Password',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 500),
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
          Container(
            margin: const EdgeInsets.only(top: 600),
            width: 170,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  //when valiadted
                }
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // Retrieve the text the that user has entered by using the
                      // TextEditingController.
                      content: Text(
                          'nickname changed to ' + ' to ' + newNickname.text),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color(0XFF588157),
                // ignore: deprecated_member_use
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              ),
              child: const Text(
                'Save',
                style: TextStyle(fontSize: 18),
              ),
            ),
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

  Widget buildCoverImage() => Container(
        decoration: const BoxDecoration(
          color: Color(0xFFffffff),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
            )
          ],
        ),
        child: Image.asset(
          'assets/images/backGreen.png',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(blurRadius: 2, color: Colors.black, spreadRadius: 0.1)
          ],
        ),
        child: CircleAvatar(
          radius: profileHeight / 2,
          backgroundColor: Colors.grey.shade800,
          backgroundImage: AssetImage(
            'assets/images/profilepic.png',
          ),
        ),
      );
  Widget buildProfileImage2() => CircleAvatar(
      radius: (profileHeight / 2) + 5,
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.1));

  Widget buildProfileImage3() => CircleAvatar(
      radius: (profileHeight / 2),
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.5));
}
