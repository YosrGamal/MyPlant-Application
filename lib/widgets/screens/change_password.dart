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
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                    //instead of TextField
                    onTap: () {},
                    child: const Text(
                      'Settings',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    )),
              ),
              SizedBox(height: 15),
              const Text('Change Password',
                  style: TextStyle(fontSize: 30, color: Colors.black)),
              SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Old Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.green, width: 5))),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'New Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.green, width: 5))),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.green, width: 5))),
              ),
              TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.greenAccent),
                  onPressed: () {},
                  child: Text('Submit', style: TextStyle(color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}
