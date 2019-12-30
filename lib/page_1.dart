import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {

  static const String id = '/page1';
  final String myMessage;

  const Page1({Key key, this.myMessage}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Msg: ${widget.myMessage}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => popBack(),
        child: Icon(Icons.arrow_back),
      ),
    );

  }

  popBack() {
    Navigator.pop(context);
  }
}
