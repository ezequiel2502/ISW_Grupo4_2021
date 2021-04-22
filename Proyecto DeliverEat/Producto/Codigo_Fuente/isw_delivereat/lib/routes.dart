import 'package:flutter/widgets.dart';
import 'package:isw_delivereat/screens/payment_methods/payment_screen.dart';
import 'screens/cart/cart_screen.dart';
import 'screens/data_screen/data_screen.dart';
import 'screens/splash/splash_screen.dart';



// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  PaymentScreen.routeName: (context) => PaymentScreen(),
  DataScreen.routeName: (context) => DataScreen(),
};
