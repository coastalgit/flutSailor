import 'package:flutter_sailor/data/translation_repo.dart';
import 'package:flutter_sailor/model/translation_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('translation match', () {

    //setup
    final repo = new FakeRepoPortuguese();

    //run and verify
    repo.fetchTranslation('Run').then((pt) {
      expect(true, pt.word_foreign.toLowerCase().contains('correr'));
    });
  });

  test('translation mismatch', () async{

    //setup
    final repo = new FakeRepoPortuguese();

    //run
    var trans = await repo.fetchTranslation('x');

    //verify
    expect(true, trans == null);
  });
}