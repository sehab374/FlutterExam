import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'myThemData.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FirstScreen.routeName,
      routes: {
        FirstScreen.routeName: (context) => FirstScreen(),
        SecondScreen.routeName: (context) => SecondScreen(),
        ThirdScreen.routeName: (context) => ThirdScreen(),
      },
      theme: MyThemeData.lighttheme,
      darkTheme: MyThemeData.darltheme,);
  }
}
