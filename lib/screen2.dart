import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  static const String routeName = "secondscreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              title: Text(
                "secondscreen",
                style: GoogleFonts.elMessiri(color: Colors.red),
              )),
        ));
  }
}
