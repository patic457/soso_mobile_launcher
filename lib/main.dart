import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soso_mobile/config.dart';
import 'package:marketplace/marketplace.dart' as marketplace;
// import 'package:preview/preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // marketplace.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var routeHome = Config.sosoRoute;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marketplace Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'DB Heaven',
      ),
      // initialRoute: Config.sosoRoute,
      // onGenerateRoute: RouterGenerator.generateRoute,
      home: Config.sosoScreen,
    );
  }
}
