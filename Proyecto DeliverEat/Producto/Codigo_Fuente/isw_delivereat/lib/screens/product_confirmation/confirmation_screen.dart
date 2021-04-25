import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:isw_delivereat/screens/product_confirmation/components/body.dart';

class ConfirmationScreen extends StatelessWidget {
  static String routeName = "/confirmation";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Pedido recibido", style: GoogleFonts.openSans(),),
      ),
      body: Body(),
    );
  }
}