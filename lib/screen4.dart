import 'package:flutter/material.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({super.key});

  static const String routeName = "secondscreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("SARA EHAB GAB ALLAH"), centerTitle: true),
    ));
  }
}
