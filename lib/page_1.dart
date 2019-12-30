import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';

//
class Page1Args extends BaseArguments {
  final String myArg1;
  final double myArg2;

  Page1Args({
    this.myArg1,
    this.myArg2,
  });
}

class Page1 extends StatefulWidget {
  static const String id = '/page1';

  final Page1Args myArgs;

  const Page1({this.myArgs});

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
            Text('Arg1: ${widget.myArgs?.myArg1}'),
            Text('Arg2: ${widget.myArgs?.myArg2}'),
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
