import 'package:flutter/material.dart';
import 'package:flutter_tests/src/app_routes/app_router.dart';
import 'package:flutter_tests/src/feature/authentcation/presentation/auth_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      theme: ThemeData.dark(),
      onGenerateRoute: generateRoute,
      initialRoute: '/',
    );
  }
}
