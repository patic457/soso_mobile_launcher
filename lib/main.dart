import 'package:flutter/material.dart';
import 'package:soso_mobile_cart/router.dart';
import 'package:soso_mobile_cart/injection.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SosoMFAF',
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
