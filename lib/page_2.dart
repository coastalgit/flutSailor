import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  static const String id = '/page2';

  final String myVal1;
  final int myVal2;

  const Page2({
    this.myVal1,
    this.myVal2,
  });

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
            Text('Val 1: ${widget.myVal1}'),
            Text('Val 2: ${widget.myVal2}'),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () => popBack(),
//        child: Icon(Icons.arrow_back),
//      ),
    );
  }

  popBack() {
    Navigator.pop(context);
  }
}
