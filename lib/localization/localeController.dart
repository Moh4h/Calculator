import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:my_calculator/component/themes.dart';
import 'package:my_calculator/main.dart';

class Localecontroller extends GetxController {
  void changeLang(String codeLang){
    Locale locale=Locale(codeLang);
    sharedPreferences!.setString("lang", codeLang);
    Get.updateLocale(locale);
  }
  Rx<TextEditingController> controller = TextEditingController(text: "").obs;

  Rx<TextEditingController> controllertotal = TextEditingController(text: "").obs;
  Icon i =
      sharedPreferences!.getBool("icon") == null ||
              sharedPreferences!.getBool("icon") == false
          ? Icon(Icons.brightness_2)
          : Icon(Icons.sunny);
  Locale? initailLocale;
  void calcOpration() {
    String text = controller.value.text;

    if (text.isEmpty) return;

    // استبدل الرموز غير المفهومة
    text = text.replaceAll('×', '*');
    text = text.replaceAll('÷', '/');

    try {
      Parser p = Parser();
      Expression exp = p.parse(text);

      ContextModel cm = ContextModel();
      double result = exp.evaluate(EvaluationType.REAL, cm);

      // عرض النتيجة (بدون .0 لو رقم صحيح)
      if (result % 1 == 0) {
        controllertotal.value.text=controller.value.text;
        controller.value.text="";
        controllertotal.value.text = result.toInt().toString();
        update();
      } else {
         controllertotal.value.text=controller.value.text;
         controller.value.text="";
       controllertotal.value.text = result.toString();
       update();
      }
    } catch (e) {
      controller.value.text = "";
      controllertotal.value.text="Error".tr;
      update();
    }
  }

  @override
  void onInit() {
    initailLocale =
        sharedPreferences!.getString("lang") == null
            ? Get.deviceLocale!
            : Locale(sharedPreferences!.getString("lang").toString());

    super.onInit();
  }

  void changeLocale(String? langcode) {
    Locale x = Locale(langcode!);
    sharedPreferences!.setString("lang", langcode);
    Get.updateLocale(x);
  }

  void changeIconTheme() {
    if (sharedPreferences!.getBool("icon") == false) {
      sharedPreferences!.setBool("icon", true);

      Get.changeTheme(MyThemes.myDark);
    } else {
      sharedPreferences!.setBool("icon", false);

      Get.changeTheme(MyThemes.myLight);
    }

    update();
  }
  

  void clearOpration() {
    controller.value.text = "";
    controllertotal.value.text="";
    update();
  }

  void addOpration(String opration) {
     controllertotal.value.text="";
     update();
    String textOpration = controller.value.text;

    if (textOpration.isEmpty || opration == "=") return;

    String lastChar = textOpration[textOpration.length - 1];

    if ("+-×÷".contains(lastChar)) {
      textOpration =
          textOpration.substring(0, textOpration.length - 1) + opration;
    } else {
      textOpration = textOpration + opration;
    }

    controller.value.text = textOpration;
    
  }

  void deleteOpration() {
     controllertotal.value.text="";
     update();
    String textOpration = controller.value.text;

    if (textOpration.isEmpty) return;

    textOpration = textOpration.substring(0, textOpration.length - 1);

    controller.value.text = textOpration;
  }

  void addNumber(String number) {
     controllertotal.value.text="";
     update();
    String textOpration = controller.value.text;

    textOpration = textOpration + number;
    controller.value.text = textOpration;
  }

  void addDot() {
     controllertotal.value.text="";
     update();
    String text = controller.value.text;

    if (text.isEmpty) {
      controller.value.text = "0.";
      return;
    }

    String lastChar = text[text.length - 1];

    if ("+-×÷".contains(lastChar)) {
      controller.value.text = text + "0.";
      return;
    }

    List<String> parts = text.split(RegExp(r'[+\-×÷]'));
    String lastNumber = parts.last;

    if (lastNumber.contains('.')) return;

    controller.value.text = text + ".";
  }
}
