import 'package:flutter/animation.dart';
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

        /*
          NOTES ON ARGS AND PARAMS:
          PARAMS = represented by a MAP, containing multiple vals. Note that we lose out on type safety.
          ARGS = represented by a class
        */
        builder: (context, args, params){
          return PageHome();
        },
      ),
      SailorRoute(
        name: Page1.id,
        builder: (context, args, params){
          // USING "ARGS" EXAMPLE IN THIS CASE
          return Page1(myArgs: args,);
        },
        defaultTransitions: [
          SailorTransition.slide_from_bottom,
          //SailorTransition.zoom_in
        ],
        defaultTransitionCurve: Curves.bounceIn,
        defaultTransitionDuration: Duration(milliseconds: 1500),
      ),
      SailorRoute(
        name: Page2.id,
        builder: (context, args, params){
          return Page2(
            // Passing the SailorParams by name, with optional casting via the generic method "param"
            myVal1: params.param<String>('myVal1'),
            myVal2: params.param<int>('myVal2'),
          );
        },
        // USING "PARAMS" EXAMPLE IN THIS CASE
        // Note on type safety: we must ensure we specify appropriate values for the represented expected type in our class
        params: [
          SailorParam(name: 'myVal1', isRequired: true, defaultValue: 'I am the default val'),
          SailorParam(name: 'myVal2', defaultValue: 0),
        ],
      ),
    ]);
  }
}