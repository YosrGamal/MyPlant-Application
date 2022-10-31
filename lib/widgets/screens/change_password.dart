import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_plant_application/model/userlogic.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isHiddenPassword = true;

  UserModel user = UserModel(
      id: 0, email: 'omar@gmail.com', password: 'aA09@!', username: 'Omega');

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
                      //instead of TextField
                      onTap: () {
                        Navigator.pop(context);
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
                TextFormField(
                  obscureText: isHiddenPassword,
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
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: 'Old Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(color: Colors.green, width: 5))),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: isHiddenPassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: 'New Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(color: Colors.green, width: 5))),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: isHiddenPassword,
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
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(color: Colors.green, width: 5))),
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
