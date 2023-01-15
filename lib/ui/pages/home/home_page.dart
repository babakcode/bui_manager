import 'package:bui_managers/ui/pages/home/drawer_page.dart';
import 'package:bui_managers/ui/pages/home/projects_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffbec5d9),
              Color(0xff616a7e),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (_width > 960)
              const SizedBox(width: 300, child: DrawerPage()),
            const Expanded(child: ProjectsPage())
          ],
        ),
      ),
    );
  }
}
