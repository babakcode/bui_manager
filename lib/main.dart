import 'package:bui_managers/ui/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bui_managers/ui/sign_up/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/sign_up',
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const SignInPage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BUI Managers',
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
