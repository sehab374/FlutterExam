import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  static const String routeName = "firstscreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              title: Text(
                "first screen",
                style: GoogleFonts.elMessiri(color: Colors.white70),
              )),
        ));
  }
}
