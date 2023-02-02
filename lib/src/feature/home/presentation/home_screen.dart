import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  //late TabController _tabController;

  @override
  void initState() {
    //_tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          bottom: const TabBar(

            tabs:  [
              Icon(Icons.dashboard),
              Icon(Icons.qr_code),
              Icon(Icons.video_call),
              Icon(Icons.chat_bubble),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.dashboard),
            Icon(Icons.qr_code_2_outlined),
            Icon(Icons.call),
            Icon(Icons.chat_bubble),
          ],
        ),
      ),
    );
  }
}

// flutter test integration_test/app_test.dart
