import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shionogi_trial/Presentation/Pages/login_page.dart';
import 'package:shionogi_trial/Presentation/Pages/dashboard_main_page.dart';

class MyAppRouter{
  GoRouter router = GoRouter(
    initialLocation: '/Home_Page',
    routes: [
      GoRoute(
        path: '/',
        name: 'Login_Page',
        pageBuilder: (context, state) {
          return MaterialPage(child: LoginPage());
        },
      ),
      GoRoute(
        path: '/Home_Page',
        name: 'Home_Page',
        pageBuilder: (context, state) {
          return const MaterialPage(child: MainPageDashboard());
        },
      ),
    ]
  );
}