import 'package:my_plant_application/view/Users/widgets/screens/home.dart';
import 'package:my_plant_application/view/Users/widgets/screens/library.dart';
import 'package:my_plant_application/view/Users/widgets/screens/settings.dart';
import 'package:my_plant_application/view/Users/widgets/screens/task.dart';
import 'package:my_plant_application/view/Users/widgets/screens/camera.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';

class PerNavbar extends StatelessWidget {
  const PerNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,

      screens: buildScreens(),
      items: navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style13,
    );
  }
}

List<Widget> buildScreens() {
  return [
    const Home(),
    const Library(),
    const Camera(),
    const Task(),
    const Settings()
  ];
}

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: ("Home"),
      activeColorPrimary: icColor,
      inactiveColorPrimary: gColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.library_add_check),
      title: ("Library"),
      activeColorPrimary: icColor,
      inactiveColorPrimary: gColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.camera_alt_outlined),
      title: ("Camera"),
      activeColorPrimary: icColor,
      inactiveColorPrimary: gColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.task),
      title: ("Tasks"),
      activeColorPrimary: icColor,
      inactiveColorPrimary: gColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.settings),
      title: ("Settings"),
      activeColorPrimary: icColor,
      inactiveColorPrimary: gColor,
    ),
  ];
}
