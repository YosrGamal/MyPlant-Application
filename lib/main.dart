// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
// import 'package:my_plant_application/widgets/components/navbar.dart';
// import 'package:my_plant_application/widgets/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:my_plant_application/widgets/components/per_navbar.dart';
import 'package:my_plant_application/widgets/screens/login.dart';
import 'package:my_plant_application/widgets/screens/signup.dart';
import 'package:my_plant_application/widgets/screens/library.dart';
import 'package:my_plant_application/widgets/screens/settings.dart';
import 'package:my_plant_application/widgets/screens/task.dart';
import 'package:my_plant_application/widgets/screens/edit_profile.dart';
import 'package:my_plant_application/widgets/screens/change_password.dart';

import 'data/userdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primaryColor: btColor,
        primaryColorLight: icColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: tColor),
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return Login();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return PerNavbar();
      },
    ),
    GoRoute(
      path: '/signup',
      builder: (BuildContext context, GoRouterState state) {
        return Signup();
      },
    ),
    GoRoute(
      path: '/library',
      builder: (BuildContext context, GoRouterState state) {
        return Library();
      },
    ),
    GoRoute(
      path: '/tasks',
      builder: (BuildContext context, GoRouterState state) {
        return Task();
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) {
        return Settings();
      },
    ),
    GoRoute(
      path: '/editprofile',
      builder: (BuildContext context, GoRouterState state) {
        return EditProfile();
      },
    ),
    GoRoute(
      path: '/changepassword',
      builder: (BuildContext context, GoRouterState state) {
        return ChangePasswordScreen(
          user: users[0],
        );
      },
    ),
  ],
);
