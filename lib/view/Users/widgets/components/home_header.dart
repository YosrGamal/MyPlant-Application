import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/data/repository/user_repo.dart';

class HeaderWithSearchBar extends StatefulWidget {
  final Size size;
  const HeaderWithSearchBar({required this.size, super.key});

  @override
  State<HeaderWithSearchBar> createState() => _HeaderWithSearchBarState();
}

class _HeaderWithSearchBarState extends State<HeaderWithSearchBar> {
  String name = '';
  bool isloaded = false;
  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    name = await getUserName();
    if (name.isNotEmpty) {
      print('name is $name');
      setState(() {
        isloaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isloaded,
      replacement: const CircularProgressIndicator(),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: defaultPadding * 2.5),
                height: widget.size.height * 0.4,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      height: widget.size.height * 0.6 - 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Welcome $name',
                            style: const TextStyle(
                              fontSize: 40,
                              color: tColor,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.normal,
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),
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
      ),
    );
  }
}
