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
  String nombre = "";
  String apellido = "";
  String numeroT = "";
  String venc = "";
  String cvc = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Image.asset(
                "assets/images/front_card.png",
                height: SizeConfig.screenHeight * 0.4, //40%
              ),
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    nombre = value;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Nombre",
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    apellido = value;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Apellido",
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                keyboardType: TextInputType.number,
                maxLength: 16,
                onChanged: (value) {
                  setState(() {
                    numeroT = value;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Numero de la tarjeta",
                ),
              ),

              TextField(
                keyboardType: TextInputType.datetime,
                maxLength: 7,
                onChanged: (value) {
                  setState(() {
                    venc = value;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Fecha de vencimiento",
                ),
              ),

              TextField(
                keyboardType: TextInputType.datetime,
                maxLength: 3,
                onChanged: (value) {
                  setState(() {
                    cvc = value;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Codigo de seguridad",
                ),
              ),
              DefaultButton(
                text: "Continuar",
                press: () {
                  bool flag1 = false;
                  bool flag2 = false;
                  if (nombre == "" || apellido == "" || (cvc == "" || cvc.length < 3) || (numeroT == "" || numeroT.length < 16) || venc == "") {
                    flag1 = true;
                    showDialog(context: context,
                        builder: (BuildContext context) =>
                            AlertDialog(
                              title: Text("No puede dejar campos vacios o incompletos!"),
                              content: Text("Vuelva a intentar."),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop("Ok");
                                    },
                                    child: Text("Ok"))
                              ],
                            )
                    );
                  }
                  if (numeroT[0] != "4" && numeroT.length == 16) {
                    flag2 = true;
                    showDialog(context: context,
                        builder: (BuildContext context) =>
                            AlertDialog(
                              title: Text(
                                  "La tarjeta que usted ingreso no es VISA!"),
                              content: Text("Vuelva a intentar."),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop("Ok");
                                    },
                                    child: Text("Ok"))
                              ],
                            )
                    );
                  }
                  if(flag1 == false && flag2 == false){
                      Navigator.pushNamed(context, DataScreen.routeName);
                    }
                  }
              )
            ],
        ),
      ),
    );
  }
}

