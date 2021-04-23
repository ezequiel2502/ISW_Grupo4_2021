import 'package:flutter/material.dart';
import 'package:isw_delivereat/components/default_button.dart';
import 'package:isw_delivereat/screens/data_screen/data_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

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
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Nombre",
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Apellido",
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                keyboardType: TextInputType.number,
                maxLength: 16,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Numero de la tarjeta",
                ),
              ),

              TextField(
                keyboardType: TextInputType.datetime,
                maxLength: 7,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Fecha de vencimiento",
                ),
              ),

              TextField(
                keyboardType: TextInputType.datetime,
                maxLength: 4,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Codigo de seguridad",
                ),
              ),
              DefaultButton(
                text: "Continuar",
                press: () {
                  Navigator.pushNamed(context, DataScreen.routeName);
                },
              ),
            ],
        ),
      ),
    );
  }
}
