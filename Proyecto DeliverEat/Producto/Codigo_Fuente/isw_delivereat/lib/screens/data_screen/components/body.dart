import 'package:dropdownfield/dropdownfield.dart';
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
            DropDownField(
              controller: citiesSelected,
              labelText: "Ciudad",
              hintText: "Ingresar ciudad",
              enabled: true,
              itemsVisibleInDropdown: 5,
              items: cities,
              onValueChanged: (value){
                setState(() {
                  selectCity = value;
                });
              },
            )
          ],
        ),

      ),

    );
  }
}

String selectCity = "";

final citiesSelected = TextEditingController();

List<String> cities = [
  "Cordoba",
  "Ciudad2",
  "Ciudad3",
  "Ciudad4",
  "Ciudad5",
  "Ciudad6",
  "Ciudad7",
  "Ciudad8",
];