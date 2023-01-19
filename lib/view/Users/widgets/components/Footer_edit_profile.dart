import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditProfileFooter extends StatelessWidget {
  const EditProfileFooter(
      {super.key, required this.newNickname, required this.formKey});

  final GlobalKey<FormState> formKey;
  final TextEditingController newNickname;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.only(top: 600),
        width: 170,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              //when valiadted
            }
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  // Retrieve the text the that user has entered by using the
                  // TextEditingController.
                  content:
                      Text('nickname changed to ' + ' to ' + newNickname.text),
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            // ignore: deprecated_member_use
            primary: const Color(0XFF588157),
            // ignore: deprecated_member_use
            onPrimary: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
          child: const Text(
            'Save',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    ]);
  }
}
