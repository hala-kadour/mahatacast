import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

class MyAppLocalizationsDelegate
    extends LocalizationsDelegate<MyAppLocalizations> {
  const MyAppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<MyAppLocalizations> load(Locale locale) async {
    await initializeDateFormatting();
    return MyAppLocalizations(locale);
  }

  @override
  bool shouldReload(MyAppLocalizationsDelegate old) => false;
}

class MyAppLocalizations {
  final Locale locale;

  MyAppLocalizations(this.locale);

  static MyAppLocalizations? of(BuildContext context) {
    return Localizations.of<MyAppLocalizations>(context, MyAppLocalizations);
  }

  static const LocalizationsDelegate<MyAppLocalizations> delegate =
      MyAppLocalizationsDelegate();
}
