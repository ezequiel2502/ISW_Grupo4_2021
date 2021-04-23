import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isw_delivereat/components/default_button.dart';
import 'package:isw_delivereat/screens/product_confirmation/confirmation_screen.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  SingingCharacter _character = SingingCharacter.ya;
  DateTime _dateTime;
  TimeOfDay _time;
  String direccion = "";
  String numero = "";
  String ciudad ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              maxLength: 25,
              onChanged: (value) {
                setState(() {
                  direccion = value;
                });
              },
              decoration: InputDecoration(
                filled: true,
                labelText: "Direccion (Nombre de la calle) ",
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 5,
              onChanged: (value) {
                setState(() {
                  numero = value;
                });
              },
              decoration: InputDecoration(
                filled: true,
                labelText: "Numero de la calle",
              ),
            ),
            SizedBox(height: 15,),
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
                  ciudad = value;
                });
              },
            ),
            SizedBox(height: 15,),

            ListTile(
              title: const Text('Lo antes posible'),
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
              title: const Text('Otro dia/horario'),
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
                    });
                        });
                    showTimePicker(context: context,
                        initialTime: TimeOfDay.now()).then((value){
                          setState(() {
                            _time = value;
                          });
                    });
                    _character = value;
                  });
                },
              ),
            ),

            Text(_dateTime.toString()),
            Text(_time.toString()),
            SizedBox(height: 150),
            SizedBox(
              width: getProportionateScreenWidth(190),
              child: DefaultButton(
                text: "Finalizar Pedido",
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
                  if(flag == true){
                    Navigator.pushNamed(context, ConfirmationScreen.routeName);
                  }
                  else{
                    showDialog(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text("No puede dejar campos vacios!"),
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
}

enum SingingCharacter { ya, otro}

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

