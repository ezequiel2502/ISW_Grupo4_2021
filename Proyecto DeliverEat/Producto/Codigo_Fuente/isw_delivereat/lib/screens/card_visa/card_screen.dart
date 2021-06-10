import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isw_delivereat/screens/card_visa/components/body.dart';

class CardScreen extends StatelessWidget {
  static String routeName = "/card";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Ingresa los datos de tu tarjeta",
              style: GoogleFonts.openSans(textStyle:TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}