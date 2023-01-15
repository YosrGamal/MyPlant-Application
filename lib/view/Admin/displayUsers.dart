import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_plant_application/domain/user.dart';
import 'package:my_plant_application/constants.dart';
import 'package:go_router/go_router.dart';

class DisplayUsers extends StatelessWidget {
  const DisplayUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Users Registered'),
          backgroundColor: icColor,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 100,
                child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: icColor,
                    ),
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: bgColor),
                    )),
              ),
              ListTile(
                  title: const Text(
                    'Users',
                    style: TextStyle(
                        fontSize: 20, fontFamily: 'Arial', color: tColor),
                  ),
                  onTap: () {
                    context.go('/display_users');
                  }),
              ListTile(
                  title: const Text(
                    'Dashboard',
                    style: TextStyle(
                        fontSize: 20, fontFamily: 'Arial', color: tColor),
                  ),
                  onTap: () {
                    context.go('/');
                  }),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              FutureBuilder(
                future: FirebaseFirestore.instance.collection('users').get(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        QueryDocumentSnapshot<Map<String, dynamic>> document =
                            snapshot.data!.docs[index];
                        // User myplant = User(
                        //     id: document.id,
                        //     email: document['email'],
                        //     username: document['name'],
                        //     dob: document['Date of birth'],
                        //     profilepic: document['profile picture']);
                        return ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xffE6E6E6),
                            radius: 30,
                            child: Icon(
                              Icons.person,
                              color: Color(0xffCCCCCC),
                            ),
                          ),
                          title: Text(document['name']),
                          subtitle: Text(document['email']),
                          trailing: Text(document['Date of birth']),
                        );
                      },
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const CircularProgressIndicator(
                          color: btColor,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
