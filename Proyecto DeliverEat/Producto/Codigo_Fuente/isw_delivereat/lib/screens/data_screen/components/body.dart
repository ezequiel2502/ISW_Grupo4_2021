import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: "Direccion (Nombre de la calle) ",
              ),
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: "Numero de la calle",
              ),
            ),
          ],
        ),

      ),

    );
  }
}
