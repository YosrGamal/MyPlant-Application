import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/widgets/screens/home.dart';

class Navbar extends StatefulWidget {
  const Navbar({this.shape = const CircularNotchedRectangle()});
  final NotchedShape? shape;

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: btColor,
        onPressed: () {},
        child: Icon(
          Icons.camera_alt_rounded,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: widget.shape,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Home();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: currentTab == 0 ? icColor : bpColor,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                                color: currentTab == 0 ? icColor : bpColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Home();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: currentTab == 1 ? icColor : bpColor,
                          ),
                          Text(
                            'Library',
                            style: TextStyle(
                                color: currentTab == 1 ? icColor : bpColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 80),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Home();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: currentTab == 2 ? icColor : bpColor,
                          ),
                          Text(
                            'Tasks',
                            style: TextStyle(
                                color: currentTab == 2 ? icColor : bpColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Home();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings,
                            color: currentTab == 3 ? icColor : bpColor,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                                color: currentTab == 3 ? icColor : bpColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
