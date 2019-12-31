import 'package:flutter_sailor/data/translation_repo.dart';
import 'package:flutter_sailor/model/translation_model.dart';

class TranslationStore{

  final TranslationRepo _translationRepo;

  TranslationStore(this._translationRepo);

  TranslationModel _translationModel;
  TranslationModel get translationModel => _translationModel;

  void getTranslation(String englishWord) async{
    _translationModel = await _translationRepo.fetchTranslation(englishWord);
  }

}