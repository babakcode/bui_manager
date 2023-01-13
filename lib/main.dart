import 'package:bui_managers/constants/app_constants.dart';
import 'package:bui_managers/ui/pages/sign_in/sign_in_page.dart';
import 'package:bui_managers/ui/pages/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// final goRouter = GoRouter(
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const SignInPage(),
//     ),
//     GoRoute(
//       path: '/sign_up',
//       builder: (context, state) => const SignUpPage(),
//     ),
//   ],
// );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BUI Managers',
      initialRoute: '/sign_in',
      routes: {
        '/sign_in': (context) => const SignInPage(),
        '/sign_up': (context) => const SignUpPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: AppConstants.blackColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: AppConstants.textColor,
          displayColor: AppConstants.textColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
