import 'package:get/route_manager.dart';

class MyLocale extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => 
  {
    "ar": {
      "ppbar":"الة حاسبة",
       "Total":" : الاجمالي"
    },
    "en": {
      "ppbar":"Calculator",
      "Total":" : Total"
    }
  };
}