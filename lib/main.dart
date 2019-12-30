import 'package:flutter/material.dart';
import 'package:flutter_sailor/page_home.dart';
import 'package:flutter_sailor/routes.dart';

void main() {
  Routes.createRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
      onGenerateRoute: Routes.sailor.generator(),
      navigatorKey: Routes.sailor.navigatorKey, //this negates the need to pass around build context whilst navigating
    );
  }
}
