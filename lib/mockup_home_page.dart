import 'package:flutter/material.dart';
import 'package:soso_mobile_cart/cart/presentation/pages/cart_page.dart';
import 'package:soso_mobile_cart/marketplace.dart' as marketplace;
// import 'package:preview/preview.dart';

class MockupHomePage extends StatefulWidget {
  static const ROUTE_NAME = '/';

  const MockupHomePage({super.key});

  @override
  State<MockupHomePage> createState() => _MockupHomePageState();
}

class _MockupHomePageState extends State<MockupHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace Home'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Marketplace Home'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/cart');
                // Modular.to.navigate(marketplace.DEFAULT_ROUTE_NAME);
              },
              child: Text('Go to Marketplace Product'),
            ),
          ],
        ),
      ),
    );
  }
}
