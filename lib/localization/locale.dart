import 'package:get/route_manager.dart';

class MyLocale extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => 
  {
    "ar": {
      "1Appbar":"الة حاسبة","Error":"خطأ"
    },
    "en": {
      "1Appbar":"Calculator","Error":"Error"
    }
  };
}