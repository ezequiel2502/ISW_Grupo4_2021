import 'package:flutter/material.dart';
import 'package:isw_delivereat/screens/payment_methods/components/body.dart';

class PaymentScreen extends StatelessWidget {
  static String routeName = "/payment";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Elije tu forma de pago",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}