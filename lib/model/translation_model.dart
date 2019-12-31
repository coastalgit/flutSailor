class TranslationModel{

  final String word_en;
  final String word_foreign;

  TranslationModel({this.word_en, this.word_foreign});

  //Below is manual equivalent of https://pub.dev/packages/equatable package

  @override
  bool operator == (Object o) {

    if (identical(this, o))
      return true;

    return o is TranslationModel &&
        o.word_en == word_en &&
        o.word_foreign == word_foreign;
  }

  @override
  int get hashCode => word_en.hashCode ^ word_foreign.hashCode; // use of bitwise XOR operator (caret)
}