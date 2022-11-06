// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> en = {
    "language": "Language",
    "barcode": "barcode",
    "password": "password",
    "remember": "Remember password?",
    "dont": "Don't have account?",
    "register": "Register",
    "sign": "Sign up",
    "name": "name",
    "surname": "surname",
    "email": "email",
    "number": "number",
    "ret": "return password",
    "now": "Log in",
    "camera": "Open camera",
    "flash": "flash"
  };
  static const Map<String, dynamic> kk = {
    "language": "Тіл",
    "barcode": "баркод",
    "password": "пароль",
    "remember": "Парольді сақтау?",
    "dont": "Аккаунтыныз жоқ па?",
    "register": "Тіркелу",
    "sign": "Кіру",
    "name": "аты",
    "surname": "фамилия",
    "email": "email",
    "number": "номер",
    "ret": "парольді қайталаныз",
    "now": "кіру",
    "camera": "Камера ашу",
    "flash": "Жарық"
  };
  static const Map<String, dynamic> ru = {
    "language": "Язык",
    "barcode": "баркод",
    "password": "пароль",
    "remember": "Сохранить пароль?",
    "dont": "Нет аккаунта?",
    "register": "Регистрация",
    "sign": "Войти",
    "name": "имя",
    "surname": "фамилия",
    "email": "email",
    "number": "номер",
    "ret": "повторите пароль",
    "now": "войти",
    "camera": "Открыть камеру",
    "flash": "Вспышка"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "en": en,
    "kk": kk,
    "ru": ru
  };
}
