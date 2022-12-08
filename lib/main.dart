import 'package:flutter/material.dart';
import 'package:marketplace_cart/router.dart';
import 'package:marketplace_cart/injection.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'DB Heaven',
      ),
      initialRoute: '/cart',
      onGenerateRoute: RouterGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
