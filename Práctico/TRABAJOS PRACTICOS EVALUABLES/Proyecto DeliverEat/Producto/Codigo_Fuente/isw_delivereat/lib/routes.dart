import 'package:flutter/widgets.dart';
import 'package:isw_delivereat/screens/card_visa/card_screen.dart';
import 'package:isw_delivereat/screens/order_details/oderd_details_screen.dart';
import 'package:isw_delivereat/screens/payment_methods/payment_screen.dart';
import 'package:isw_delivereat/screens/product_confirmation/confirmation_screen.dart';
import 'screens/cart/cart_screen.dart';
import 'screens/data_screen/data_screen.dart';
import 'screens/splash/splash_screen.dart';



// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  PaymentScreen.routeName: (context) => PaymentScreen(),
  CardScreen.routeName: (context) => CardScreen(),
  DataScreen.routeName: (context) => DataScreen(),
  ConfirmationScreen.routeName: (context) => ConfirmationScreen(),
  OrderScreen.routeName: (context) => OrderScreen(),
};
