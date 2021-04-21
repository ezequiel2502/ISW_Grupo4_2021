import 'package:flutter/material.dart';
class Product {
  final String image, title, description;
  final int price;

  Product({
    this.image,
    this.title,
    this.price,
    this.description,
  });



  List<Product> products = [
    Product(
        title: "Big Mac",
        price: 230,
        description: "Pan, 2 hamburguesas, queso chedar, lechuga, tomate, pepino y cebolla.",
        image: "assets/images/mc_big_mac.png"),

    Product(
        title: "MacChiken",
        price: 150,
        description: "Pan, hamburguesa de pollito, queso chedar, lechuga, tomate",
        image: "assets/images/mc_chiken.png"),

    Product(
        title: "MacDobleCuarto",
        price: 180,
        description: "Pan, 2 medallones de carne, queso chedar, lechuga, tomate",
        image: "assets/images/mc_doble_cuarto.png"),
  ];

}

class Items extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ItemsWidget();
  }
}

class ItemsWidget extends State<Items>{
  String vista = "Items del carrito";
  var lista = ["Big Mac", "McChicken", "Mc Doble Cuarto"];

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: DropdownButton(
        items: lista.map((String a){
          return DropdownMenuItem(
          value: a,
          child: Text(a));
          }).toList(),
        onChanged: (_value) =>{
          setState((){
            vista = _value;
        })
        },
        hint: Text(vista),
        ),
      ),
    );
  }
}

class ItemsList extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BotonFlotante(),
    );
  }
}

class BotonFlotante extends StatelessWidget{
  const BotonFlotante({
    Key key,
  }) : super(key: key);

  @override

  Widget build(BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.add),
        onPressed: (){
          print("hola mundo");
        }
    );
  }
}



