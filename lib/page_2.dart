import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {

  static const String id = '/page2';
  final String myMessage;

  const Page2({Key key, this.myMessage}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
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
