import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isw_delivereat/models/Cart.dart';
import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/order";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Tu carrito",
            style: GoogleFonts.openSans(textStyle: TextStyle(color: Colors.black)),
          ),
          Text(
            "${demoCarts.length} items",
            style: GoogleFonts.openSans(textStyle: Theme.of(context).textTheme.caption),
          ),
        ],
      ),
    );
  }
}
