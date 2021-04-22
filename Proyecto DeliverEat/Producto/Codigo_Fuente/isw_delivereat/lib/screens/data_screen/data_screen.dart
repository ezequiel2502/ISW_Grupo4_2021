import 'package:flutter/material.dart';
import 'package:isw_deliveryeat/models/Cart.dart';
import 'package:isw_deliveryeat/screens/data_screen/components/body.dart';
import 'package:isw_deliveryeat/size_config.dart';

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
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Ultimo paso!",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}