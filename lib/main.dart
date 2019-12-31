import 'package:flutter/material.dart';
import 'package:flutter_sailor/data/translation_repo.dart';
import 'package:flutter_sailor/page_home.dart';
import 'package:flutter_sailor/routes.dart';
import 'package:flutter_sailor/translation_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() {
  Routes.createRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          //child: PageHome()),
          Injector(inject: [
            Inject<TranslationStore>(() => TranslationStore(FakeRepoPortuguese())),
          ], builder: (_) => PageHome()),

      onGenerateRoute: Routes.sailor.generator(),
      navigatorKey: Routes.sailor.navigatorKey, //this negates the need to pass around build context whilst navigating
    );
  }
}
