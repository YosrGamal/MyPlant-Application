import 'package:flutter/material.dart';
import 'package:my_plant_application/domain/plant.dart';
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
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'repositories/userdata.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
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
        return ChangePasswordScreen(
          user: users[0],
        );
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
  ],
);
