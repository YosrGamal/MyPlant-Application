import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_plant_application/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    const position = 0;
    return BottomNavigationBar(
        currentIndex: position,
        onTap: (value) => _onTap(value),
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Color(0XFFA0AE88),
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Color(0XFFA0AE88),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.library_books,
                color: Color(0XFFA0AE88),
              ),
              icon: Icon(
                Icons.library_books_outlined,
                color: Color(0XFFA0AE88),
              ),
              label: 'Library'),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.task,
                color: Color(0XFFA0AE88),
              ),
              icon: Icon(
                Icons.task_outlined,
                color: Color(0XFFA0AE88),
              ),
              label: 'Tasks'),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.settings,
                color: Color(0XFFA0AE88),
              ),
              icon: Icon(
                Icons.settings_outlined,
                color: Color(0XFFA0AE88),
              ),
              label: 'Settings')
        ]);
  }

  void _onTap(int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/library');
        break;
      case 2:
        context.go('/tasks');
        break;
      case 3:
        context.go('/settings');
        break;
      default:
    }
  }
}
