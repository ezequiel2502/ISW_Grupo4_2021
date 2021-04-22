import 'package:flutter/material.dart';

import 'package:isw_delivereat/screens/product_confirmation/components/body.dart';

class ConfirmationScreen extends StatelessWidget {
  static String routeName = "/confirmation";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Pedido Realizado",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Gracias por tu compra!",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}