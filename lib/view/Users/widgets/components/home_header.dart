import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';


class HeaderWithSearchBar extends StatelessWidget {
  final Size size;
  const HeaderWithSearchBar({required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: defaultPadding * 2.5),
              height: size.height * 0.4,
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    height: size.height * 0.6 - 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                       const Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 40,
                            color: tColor,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                       
                       const SizedBox(height: 10,),
                      //  FutureBuilder(future: Provider.of(context).auth.getCurrentUser(),
                      //   builder: (context, snapshot) {
                      //    if(snapshot.connectionState == ConnectionState.done) {
                      //     return Text("${snapshot.data.displayName}");
                      //    }else{
                      //     return CircularProgressIndicator();
                      //    }
                      //  }),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffE6E6E6),
                            radius: 30,
                            child: Icon(
                              Icons.person,
                              color: Color(0xffCCCCCC),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ); 
  }
}

