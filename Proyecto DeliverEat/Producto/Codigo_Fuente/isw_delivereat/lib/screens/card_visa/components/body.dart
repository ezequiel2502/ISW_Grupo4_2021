import 'package:flutter/material.dart';
import 'package:isw_delivereat/components/default_button.dart';
import 'package:isw_delivereat/components/moving_card_widget.dart';
import 'package:isw_delivereat/screens/data_screen/data_screen.dart';
import 'package:mask_shifter/mask_shifter.dart';
import 'package:credit_card_validate/credit_card_validate.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String nombre = "";
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
            MovingCardWidget(urlFront: "assets/images/front_card.png", urlBack: "assets/images/back_card.png"),
            SizedBox(height: 15,),
            TextField(
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {
                  nombre = value;
                });
              },
              decoration: InputDecoration(
                filled: true,
                labelText: "Nombre y apellido",
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
              inputFormatters: [
                MaskedTextInputFormatterShifter(
                    maskONE: "XX/XX", maskTWO: "XX/XX"),
              ],
              keyboardType: TextInputType.datetime,
              maxLength: 5,
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
                  bool flag3 = false;
                  if (nombre == "" || (cvc == "" || cvc.length < 3) || (numeroT == "" || numeroT.length < 16) || venc == "") {
                    flag1 = true;
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text("No puede dejar campos vacios o incompletos!"),
                              content: Text("Vuelva a intentar."),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop("Ok");
                                    },
                                    child: Text("Ok"))
                              ],
                            ));
                  }
                  if (numeroT[0] != "4" && numeroT.length == 16) {
                    flag2 = true;
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text("La tarjeta que usted ingreso no es VISA!"),
                              content: Text("Vuelva a intentar."),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop("Ok");
                                    },
                                    child: Text("Ok"))
                              ],
                            ));
                  }
                  if (CreditCardValidator.isCreditCardValid(cardNumber: numeroT) == false && numeroT.length == 16) {
                    flag3 = true;
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text("El numero de tu tarjeta de credito no es valido."),
                              content: Text("Vuelva a intentar."),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop("Ok");
                                    },
                                    child: Text("Ok"))
                              ],
                            ));
                  }
                  if (flag1 == false && flag2 == false && flag3 == false) {
                    Navigator.pushNamed(context, DataScreen.routeName);
                  }
                })
          ],
        ),
      ),
    );
  }
}
