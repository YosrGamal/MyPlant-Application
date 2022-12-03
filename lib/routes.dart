import 'package:flutter/material.dart';
import 'package:my_plant_application/startpage.dart';
import 'package:my_plant_application/widgets/components/per_navbar.dart';
import 'package:my_plant_application/widgets/screens/login.dart';
import 'package:my_plant_application/widgets/screens/signup.dart';
import 'package:my_plant_application/widgets/screens/library.dart';
import 'package:my_plant_application/widgets/screens/settings.dart';
import 'package:my_plant_application/widgets/screens/task.dart';
import 'package:my_plant_application/widgets/screens/edit_profile.dart';
import 'package:my_plant_application/widgets/screens/change_password.dart';
import 'package:my_plant_application/widgets/screens/home.dart';
import 'package:go_router/go_router.dart';
import 'data/userdata.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Login();
        return const StartPage();
      },
    ),
    GoRoute(
      path: '/start',
      builder: (BuildContext context, GoRouterState state) {
        return const StartPage();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      path: '/signup',
      builder: (BuildContext context, GoRouterState state) {
        return const Signup();
      },
    ),
    GoRoute(
      path: '/library',
      builder: (BuildContext context, GoRouterState state) {
        return const Library();
      },
    ),
    GoRoute(
      path: '/tasks',
      builder: (BuildContext context, GoRouterState state) {
        return const Task();
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) {
        return const Settings();
      },
    ),
    GoRoute(
      path: '/editprofile',
      builder: (BuildContext context, GoRouterState state) {
        return const EditProfile();
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
