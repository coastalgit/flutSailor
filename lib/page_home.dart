import 'package:flutter/material.dart';
import 'package:flutter_sailor/page_1.dart';
import 'package:flutter_sailor/page_2.dart';
import 'package:flutter_sailor/routes.dart';

class PageHome extends StatefulWidget {

  static const String id = '/home';

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Show page 1'),
              onPressed: () => showPage1(),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text('Show page 2'),
              onPressed: () => showPage2(),
            ),
          ],
        ),
      ),
    );
  }

  showPage1() {
    Routes.sailor.navigate(Page1.id);
  }

  showPage2() {
    // Sailor is callable class, hence we can omit 'navigate' and directly call method
    Routes.sailor(Page2.id);
  }
}
