import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30), //the space before settings
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                    //instead of TextField
                    onTap: () {},
                    child: const Text(
                      'Settings',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 124, 161, 126),
                          fontFamily: 'Inter',
                          fontSize: 20,
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
              const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Old Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.green, width: 5))),
              ),
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'New Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.green, width: 5))),
              ),
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.green, width: 5))),
              ),
              const SizedBox(height: 30),

              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                width: 140,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: Color(0XFF588157),
                    // ignore: deprecated_member_use
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Text('Submit'),
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
                          color: const Color.fromARGB(255, 124, 161, 126),
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
