import 'package:flutter/material.dart';
import 'package:isw_deliveryeat/models/Product.dart';
import 'package:isw_deliveryeat/screens/details/details_screen.dart';
import '../../../constants.dart';
import 'categorries.dart';
import 'item_card.dart';

class CheckBox extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CheckBoxWidget();
  }
}

class CheckBoxWidget extends State<CheckBox>{
  bool checkBoxValue = false;

  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          children: <Widget>[
            Checkbox(
                value : checkBoxValue,
                onChanged: (bool value){
                  print(value);
                  setState(() {
                    checkBoxValue = value;
                  });
                }),
          Text(
              "Carrito con productos",
              style: TextStyle(
                  color: Colors.black,
                fontSize: 20,
              )
            )
          ]
        ),
        );
  }
}