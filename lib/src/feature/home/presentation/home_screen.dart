import 'package:flutter/material.dart';
import 'package:flutter_tests/src/widgets/app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('Home'),
      body: const Center(
        child: Text(
          'Home Screen',
          key: Key('home_screen_text'),
        ),
      ),
    );
  }
}
