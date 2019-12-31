import 'package:flutter_sailor/model/translation_model.dart';

abstract class TranslationRepo {
  Future<TranslationModel> fetchTranslation(String englishWord);
}

class FakeRepoPortuguese implements TranslationRepo {
  List<TranslationModel> translations = List();

  FakeRepoPortuguese() {
    translations.add(TranslationModel(word_en: 'Talk', word_foreign: 'Falar'));
    translations.add(TranslationModel(word_en: 'Walk', word_foreign: 'Caminhar'));
    translations.add(TranslationModel(word_en: 'Do', word_foreign: 'Fazer'));
    translations.add(TranslationModel(word_en: 'Run', word_foreign: 'Correr'));
    translations.add(TranslationModel(word_en: 'Shout', word_foreign: 'Gritar'));
    translations.add(TranslationModel(word_en: 'Sit', word_foreign: 'Sentar'));
  }

  @override
  Future<TranslationModel> fetchTranslation(String englishWord) {

    List<TranslationModel> matches = translations.where((word) => word.word_en.toLowerCase() == (englishWord.toLowerCase())).toList();

    if (matches.length != 1)
      return null;

    return Future<TranslationModel>.value(matches.first);
  }
}
