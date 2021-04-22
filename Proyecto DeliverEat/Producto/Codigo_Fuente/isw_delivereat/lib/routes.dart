import 'package:flutter/widgets.dart';
import 'package:isw_deliveryeat/screens/cart/cart_screen.dart';
import 'package:isw_deliveryeat/screens/splash/splash_screen.dart';



// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
