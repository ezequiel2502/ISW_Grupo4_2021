import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isw_delivereat/components/default_button.dart';
import 'package:isw_delivereat/screens/order_details/oderd_details_screen.dart';
import 'package:isw_delivereat/screens/product_confirmation/confirmation_screen.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  SingingCharacter _character = SingingCharacter.ya;
  DateTime _dateTime = null;
  TimeOfDay _time = null;
  String direccion = "";
  String numero = "";
  String ciudad ="";
  String tiempoEntrega ="";
  String diaEntrega ="";
  int day;
  int hour;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: 15,),
            TextField(
              keyboardType: TextInputType.text,
              maxLength: 255,
              onChanged: (value) {
                setState(() {
                  direccion = value;
                });
              },
              decoration: InputDecoration(
                labelStyle: GoogleFonts.openSans(),
                filled: true,
                labelText: "Dirección (nombre de la calle) ",
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 10,
              onChanged: (value) {
                setState(() {
                  numero = value;
                });
              },
              decoration: InputDecoration(
                labelStyle: GoogleFonts.openSans(),
                filled: true,
                labelText: "Número de la calle",
              ),
            ),
            SizedBox(height: 15,),
            DropDownField(
              controller: citiesSelected,
              labelText: "Ciudad",
              hintText: "Ingresar ciudad",
              labelStyle: GoogleFonts.openSans(),
              hintStyle: GoogleFonts.openSans(),
              enabled: true,
              itemsVisibleInDropdown: 5,
              items: cities,
              onValueChanged: (value){
                setState(() {
                  selectCity = value;
                  ciudad = value;
                });
              },
            ),
            SizedBox(height: 30,),
            TextField(
              keyboardType: TextInputType.text,
              maxLength: 255,
              onChanged: (value) {
                setState(() {
                  numero = value;
                });
              },
              decoration: InputDecoration(
                labelStyle: GoogleFonts.openSans(),
                hintStyle: GoogleFonts.openSans(),
                hintText: "Opcional",
                filled: true,
                labelText: "Referencia",
              ),
            ),
            SizedBox(height: 15,),
            ListTile(
              title: Text('Lo antes posible', style: GoogleFonts.openSans(),),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.ya,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title:  Text('Otro día/horario',style: GoogleFonts.openSans(),),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.otro,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    showDatePicker(context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(9999)).then((value){
                          setState(() {
                      _dateTime = value;
                      diaEntrega ="El día de la entrega es: ";
                    });
                        });
                    showTimePicker(context: context,
                        initialTime: TimeOfDay.now()).then((value){
                          setState(() {
                            _time = value;
                            tiempoEntrega= "Horario de entrega estimado: ";
                          });
                    });
                    _character = value;
                  });
                },
              ),
            ),
            if(diaEntrega != null && _dateTime != null) Text(mostrarFecha(diaEntrega, _dateTime.toString())),
            if(tiempoEntrega != null && _time != null) Text(mostrarTiempo(tiempoEntrega,_time.toString())),
            SizedBox(height: 50),
            SizedBox(
              width: getProportionateScreenWidth(190),
              child: DefaultButton(
                text:"Finalizar Pedido",
                press: () {
                  bool flag = false;
                  for(int i=0; i < cities.length; i++){
                    if(cities[i] == ciudad && numero != "" && direccion != ""){
                      flag = true;
                      break;
                    }
                    else{
                      continue;
                    }
                  }
                  if(_dateTime == null && _time == null){
                    _dateTime = DateTime.now().add(Duration(hours: 1));
                  } else{
                    _dateTime = _dateTime.add(Duration(hours:1));
                  }

                  if(flag == true){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => OrderScreen(text:
                            "Dirección de entrega: " + direccion + ", " + numero +
                            "\nCiudad: " + ciudad +
                            "\nFecha y hora estimada de entrega: " + day.toString() + ", " + hour.toString()
                        )
                    ));
                    // Navigator.pushNamed(context, ConfirmationScreen.routeName);
                  }
                  else{
                    showDialog(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text("No puede dejar campos vacíos!"),
                          content: Text("Vuelva a intentar."),
                          actions: <Widget>[
                            FlatButton(
                                onPressed: (){
                                  Navigator.of(context).pop("Ok");
                                },
                                child: Text("Ok"))
                          ],
                        )
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  mostrarTiempo(String tiempoEntrega, String time) {
    for(int i = 0; i < time.length; i++){
      if(i == 10 ||i == 11 ||i == 12 ||i == 13 ||i == 14 ){
        tiempoEntrega += time[i];
      }
    }
    return tiempoEntrega;
  }

  mostrarFecha(String diaEntrega, String datetime){
    for(int i = 0; i < datetime.length; i++){
      if(i == 0||i == 1||i == 2||i == 3 || i == 4 ||i == 5 ||i == 6 ||i == 7 ||i == 8||i == 9||i == 10 ){
        diaEntrega += datetime[i];
      }
    }
    return diaEntrega;
  }
}




enum SingingCharacter { ya, otro}

String selectCity = "";

final citiesSelected = TextEditingController();

List<String> cities = [
  "Cordoba",
  "Rio Ceballos",
  "Unquillo",
];

