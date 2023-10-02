import 'package:flutter/material.dart';

import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List<Widget> screens = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    ForthScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/home.png")),
                label: "*"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/req.png")),
                label: "*"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/calen.png")),
                label: "*"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/person.png")),
                label: "*")
          ]),
    ));
  }
}
