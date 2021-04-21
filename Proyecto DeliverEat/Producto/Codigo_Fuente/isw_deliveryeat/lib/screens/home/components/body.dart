import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:isw_deliveryeat/models/Product.dart';
import 'package:isw_deliveryeat/models/items.dart';
import 'package:isw_deliveryeat/screens/details/details_screen.dart';
import 'package:isw_deliveryeat/screens/home/components/confirm_order.dart';
import '../../../constants.dart';
import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "McDonalds",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        /*CheckBox(),
         Categories(),
          Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          )),
                    )),
          ),
        ),*/

        RaisedButton.icon( elevation: 4.0,
            icon: Image.asset("assets/icons/cancel.png",
              width: 20,
              height: 20,),
            color: Colors.red,
            onPressed: () {},
            label: Text("\nCancelar pedido",style: TextStyle(
                color: Colors.black, fontSize: 16.0))
        ),
      RaisedButton.icon( elevation: 4.0,
            icon: Image.asset("assets/icons/confirm.png",
              width: 20,
              height: 20,),
            color: Colors.green,
            onPressed: () {},
            label: Text("\nConfirmar pedido",style: TextStyle(
                color: Colors.black, fontSize: 16.0))
        ),
    ],
    );
  }
}
