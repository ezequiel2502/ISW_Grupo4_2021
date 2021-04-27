import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isw_delivereat/components/default_button.dart';
import 'package:isw_delivereat/screens/card_visa/card_screen.dart';
import 'package:isw_delivereat/screens/data_screen/data_screen.dart';
import '../../../size_config.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String cantidad = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),

            //Boton en efectivo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Efectivo",
                    press: () {
                      showDialog(context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text("Debe ingresar con cuánto va a pagar:",style: GoogleFonts.openSans(),),
                            content: TextField(
                              keyboardType: TextInputType.number,
                              style: GoogleFonts.openSans(),
                              onChanged: (value) {
                                setState(() {
                                  cantidad = value;
                                });
                              },
                              decoration: InputDecoration(
                                labelStyle: GoogleFonts.openSans(),
                                filled: true,
                                hintText: "\$"
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                  onPressed: (){
                                    Navigator.of(context).pop("Ok");
                                    int cantidadInt = int.parse(cantidad);
                                    if(cantidadInt > 437 && cantidad != "0" && cantidadInt < 999999){
                                      Navigator.pushNamed(context, DataScreen.routeName);
                                    }
                                    if(cantidadInt > 999999){
                                      showDialog(context: context,
                                          builder: (BuildContext context) => AlertDialog(
                                            title: Text("El monto ingresado es demasiado grande!", style: GoogleFonts.openSans(),),
                                            content: Text("Vuelva a intentar.", style: GoogleFonts.openSans(),),
                                            actions: <Widget>[
                                              FlatButton(
                                                  onPressed: (){
                                                    Navigator.of(context).pop("Ok",);
                                                  },
                                                  child: Text("Ok",style: GoogleFonts.openSans()))
                                            ],
                                          )
                                      );
                                    }
                                    if(cantidadInt < 437){
                                      showDialog(context: context,
                                          builder: (BuildContext context) => AlertDialog(
                                            title: Text("El monto ingresado no puede ser menor al total!",style: GoogleFonts.openSans()),
                                            content: Text("Vuelva a intentar.",style: GoogleFonts.openSans(),),
                                            actions: <Widget>[
                                              FlatButton(
                                                  onPressed: (){
                                                    Navigator.of(context).pop("Ok");
                                                  },
                                                  child: Text("Ok",style: GoogleFonts.openSans(),))
                                            ],
                                          )
                                      );
                                    }
                                  },
                                  child: Text("Ok",style: GoogleFonts.openSans(),))
                            ],
                          )
                      );
                    },
                  ),
                ),
              ],
            ),

            //Espacio en blanco
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                ),
                Spacer(),
                const SizedBox(width: 10),
              ],
            ),

            //Boton tarjeta visa
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Tarjeta Visa",
                    press: () {
                      Navigator.pushNamed(context, CardScreen.routeName);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
