import 'package:flutter/material.dart';
import 'package:flutter_sailor/model/translation_model.dart';
import 'package:sailor/sailor.dart';

class Page3 extends StatefulWidget {

  static const String id = '/page3';

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3 (States Rebuilder)'),
      ),
      body: Center(
        child: buildInitialInput(),
      ),
    );
  }

  Widget buildInitialInput() {
    return Center(
      child: WordInputField(),
    );
  }
  Column buildColumnWithData(TranslationModel translation) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          translation.word_en
        ),
        Text(
          translation.word_foreign,
        ),
        WordInputField(),
      ],
    );
  }

  popBack() {
    Navigator.pop(context);
  }

}

class WordInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        onSubmitted: (value) => submitEnglishWord(context, value),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: "Enter an english word",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  void submitEnglishWord(BuildContext context, String englishWord) {
    //TODO

  }
}
