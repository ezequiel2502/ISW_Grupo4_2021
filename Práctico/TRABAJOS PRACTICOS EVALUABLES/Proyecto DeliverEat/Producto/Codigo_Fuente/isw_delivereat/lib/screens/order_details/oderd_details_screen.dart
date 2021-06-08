import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isw_delivereat/screens/order_details/components/body.dart';
import '../../models/Cart.dart';
import 'components/check_out_card.dart';

class OrderScreen extends StatelessWidget {
  static String routeName = "/cart";

  final String text;
  OrderScreen({Key key, @required this.text}) : super(key:key);

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
            "Detalles de mi pedido\n",
            style: GoogleFonts.openSans(textStyle: TextStyle(color: Colors.black)),
          ),
          Text(text),
        ],
      ),
    );
  }
}

