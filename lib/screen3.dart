import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatelessWidget {
  static const String routeName = "thirdtscreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              title: Text(
                "thirdtscreen",
                style: GoogleFonts.elMessiri(color: Colors.red),
              )),
        ));
  }
}
