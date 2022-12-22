import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sqflite/utils/en_us.dart';

class LocalizationService extends Translations {
  static final locale = Locale("en", "US");
  static final fallBackLocale = Locale("en", "US");
  static final langs = ['English'];

  String selectedLang = langs.first;

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
      };

  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    selectedLang = lang;
    Get.updateLocale(locale);
  }

  Locale _getLocaleFromLanguage(String lang) {

    return Locale("en", "US");
  }
}
