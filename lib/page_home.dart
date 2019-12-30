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
              color: Colors.blueGrey.shade200,
              child: Text('Show page 1'),
              onPressed: () => _showPage1(),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              color: Colors.blueGrey.shade200,
              child: Text('Show page 2'),
              onPressed: () => _showPage2(),
            ),
          ],
        ),
      ),
    );
  }

  void _showPage1() {
    Routes.sailor.navigate(Page1.id,
        args: Page1Args(
          myArg1: _buildStringVal(),
          myArg2: 12.3,
        ));
  }

  void _showPage2() {
    //Note: Sailor is callable class, hence we can omit 'navigate' and directly call method IF it is not using params/args
    //i.e. Routes.sailor.(MyPage.id);

    Routes.sailor.navigate(Page2.id, params: {
      'myVal1': _buildStringVal(),
      'myVal2': 47,
    });
  }

  String _buildStringVal() {
    return "Ola at " + DateTime.now().toString();
  }
}
