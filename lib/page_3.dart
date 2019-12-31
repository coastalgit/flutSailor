import 'package:flutter/material.dart';
import 'package:flutter_sailor/model/translation_model.dart';
import 'package:flutter_sailor/translation_store.dart';
import 'package:sailor/sailor.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

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
      body: Container(
        child: StateBuilder<TranslationStore>(
          models: [Injector.getAsReactive<TranslationStore>()],
          builder: (context, reactiveModel) {
            if (reactiveModel.isWaiting) {
              return buildLoading();
            } else if (reactiveModel.hasData) {
              return buildColumnWithData(reactiveModel.state.translationModel);
            } else {
              return buildInitialInput();
            }
          },
        ),
      ),
    );
  }

  Widget buildInitialInput() {
    return Center(
      child: WordInputField(),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Column buildColumnWithData(TranslationModel translation) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: WordInputField(),
        ),
        Text(
          translation!=null?translation.word_en:'',
          style: TextStyle(color: Colors.blue, fontSize: 22.0),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          translation!=null?translation.word_foreign:'n/a',
          style: TextStyle(color: Colors.red, fontSize: 22.0),
        ),
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
    print('Submit [' + englishWord + ']');
    final reactiveModel = Injector.getAsReactive<TranslationStore>();
    reactiveModel.setState(
      (store) => store.getTranslation(englishWord),
    );
    // IMPORTANT: we cannot call methods on the "dumb" store directly. When we say "dumb", we mean a class with no explicit outside dependencies to assist with state management.
    // The ReactiveModel widget returned by getAsReactive will make the state management possible.
  }
}
