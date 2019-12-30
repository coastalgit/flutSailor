import 'package:flutter_sailor/page_1.dart';
import 'package:flutter_sailor/page_2.dart';
import 'package:flutter_sailor/page_home.dart';
import 'package:sailor/sailor.dart';

class Routes{

  static final sailor = Sailor();

  static void createRoutes(){
    sailor.addRoutes([
      SailorRoute(
        name: PageHome.id,
        builder: (context, args, params){
          return PageHome();
        },
      ),
      SailorRoute(
        name: Page1.id,
        builder: (context, args, params){
          return Page1();
        },
      ),
      SailorRoute(
        name: Page2.id,
        builder: (context, args, params){
          return Page2();
        },
      ),
    ]);
  }
}