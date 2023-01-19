import 'package:flutter/material.dart';
import 'package:my_plant_application/domain/plant.dart';
import 'package:my_plant_application/view/Admin/displayUsers.dart';
import 'package:my_plant_application/view/Admin/home.dart';
import 'package:my_plant_application/view/Users/widgets/screens/login.dart';
import 'package:my_plant_application/view/Users/widgets/screens/startpage.dart';
import 'package:my_plant_application/view/Users/widgets/components/plant_details.dart';
import 'package:my_plant_application/view/Users/widgets/screens/signup.dart';
import 'package:my_plant_application/view/Users/widgets/screens/library.dart';
import 'package:my_plant_application/view/Users/widgets/screens/settings.dart';
import 'package:my_plant_application/view/Users/widgets/screens/task.dart';
import 'package:my_plant_application/view/Users/widgets/screens/edit_profile.dart';
import 'package:my_plant_application/view/Users/widgets/screens/change_password.dart';
import 'package:my_plant_application/view/Users/widgets/screens/home.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return Login();
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
        return Signup();
      },
    ),
    GoRoute(
      path: '/library',
      builder: (BuildContext context, GoRouterState state) {
        return const Library();
      },
    ),
    GoRoute(
      path: '/task',
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
      path: '/admin',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeAdmin();
      },
    ),

    // GoRoute(
    //   path: '/camera',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const Camera();
    //   },
    // ),
    GoRoute(
      path: '/editprofile',
      builder: (BuildContext context, GoRouterState state) {
        return const EditProfile();
      },
    ),
    GoRoute(
      path: '/changepassword',
      builder: (BuildContext context, GoRouterState state) {
        return ChangePasswordScreen();
      },
    ),
    GoRoute(
      path: '/plant_detail',
      builder: (BuildContext context, GoRouterState state) {
        return PlantDetail(
          plant: state.extra as Plant,
        );
      },
    ),
    GoRoute(
      path: '/display_users',
      builder: (BuildContext context, GoRouterState state) {
        return const DisplayUsers();
      },
    ),
  ],
);
