import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/body.dart';

class DataScreen extends StatelessWidget {
  static String routeName = "/data";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Ingresa tus datos",
              style: GoogleFonts.openSans(textStyle: TextStyle(color: Colors.black)),
            ),
            Text(
              "Último paso!",
              style: GoogleFonts.openSans(textStyle: Theme.of(context).textTheme.caption),
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}