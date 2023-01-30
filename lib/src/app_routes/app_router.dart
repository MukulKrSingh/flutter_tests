import 'package:flutter/material.dart';
import 'package:flutter_tests/src/feature/authentcation/presentation/auth_screen.dart';
import 'package:flutter_tests/src/feature/home/presentation/home_screen.dart';

MaterialPageRoute generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const AuthScreen(),
      );

    case 'home_screen':
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('Unknown Page'),
            ),
          );
        },
      );
  }
}
