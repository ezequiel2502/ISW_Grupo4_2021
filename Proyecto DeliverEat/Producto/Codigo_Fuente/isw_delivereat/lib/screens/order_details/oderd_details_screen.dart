import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isw_delivereat/screens/order_details/components/body.dart';
import '../../models/Cart.dart';
import 'components/check_out_card.dart';

class OrderScreen extends StatelessWidget {
  static String routeName = "/cart";
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
            "Detalles de mi pedido",
            style: GoogleFonts.openSans(textStyle: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}