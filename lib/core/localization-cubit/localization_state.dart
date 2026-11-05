part of 'localization_cubit.dart';

enum Language { english, arabic }

class LocalizationState {
  Language langStatus;
  Locale locale;
  LocalizationState({
    this.langStatus = Language.english,
    this.locale = const Locale('en'),
  });
}
