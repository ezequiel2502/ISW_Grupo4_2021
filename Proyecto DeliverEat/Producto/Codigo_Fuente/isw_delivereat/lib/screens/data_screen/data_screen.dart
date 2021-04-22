import 'package:flutter/material.dart';
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