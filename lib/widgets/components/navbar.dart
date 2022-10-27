import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/widgets/screens/home.dart';
import 'package:my_plant_application/widgets/screens/library.dart';

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
    bool showFab = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: Visibility(
        visible: !showFab,
        child: FloatingActionButton(
          backgroundColor: btColor,
          onPressed: () {},
          child: Icon(
            Icons.camera_alt_rounded,
          ),
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
                          Tab(
                            icon: currentTab == 0
                                ? Image.asset(
                                    "assets/images/icons/home fill.png")
                                : Image.asset("assets/images/icons/home.png"),
                            height: 30,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                                color: currentTab == 0
                                    ? Color(0XFFA0AE88)
                                    : bpColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Library();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Tab(
                            icon: currentTab == 1
                                ? Image.asset(
                                    "assets/images/icons/library fill.png")
                                : Image.asset(
                                    "assets/images/icons/library.png"),
                            height: 30,
                          ),
                          Text(
                            'Library',
                            style: TextStyle(
                                color: currentTab == 1
                                    ? Color(0XFFA0AE88)
                                    : bpColor),
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
                          Tab(
                            icon: currentTab == 2
                                ? Image.asset(
                                    "assets/images/icons/tasks fill.png")
                                : Image.asset("assets/images/icons/tasks.png"),
                            height: 30,
                          ),
                          Text(
                            'Tasks',
                            style: TextStyle(
                                color: currentTab == 2
                                    ? Color(0XFFA0AE88)
                                    : bpColor),
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
                          Tab(
                            icon: currentTab == 3
                                ? Image.asset(
                                    "assets/images/icons/settings fill.png")
                                : Image.asset(
                                    "assets/images/icons/settings.png"),
                            height: 30,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                                color: currentTab == 3
                                    ? Color(0XFFA0AE88)
                                    : bpColor),
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
