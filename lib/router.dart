import 'package:flutter/material.dart';
import 'package:marketplace/cart/presentation/pages/cart_page.dart';
import 'package:marketplace/cart/presentation/pages/checkout_page.dart';
import 'package:soso_mobile/config.dart';

// import 'package:preview/preview.dart';

var routeHome = Config.sosoRoute;
var routeMarketPlace = Config.routeMarketPlace;

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    late Widget page;
    if (settings.name == routeHome) {
      switch (settings.name) {
        case '/cart':
          page = CartPage();
          break;
        case '/checkout':
          page = CheckoutPage();
          break;
      }
    } else if (settings.name!.startsWith(routeMarketPlace)) {
      // return marketplace.RouterGenerator.generateRoute(settings);
    } else {
      return _errorRoute();
    }

    return MaterialPageRoute(builder: (context) => page);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: Center(
            child: Text('Page not found.'),
          ),
        );
      },
    );
  }
}
