import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationState());
  Locale _locale = const Locale("en");
  Locale get Local => _locale;
  void setLocal(Locale locale, Language status) {
    _locale = locale;
    emit(LocalizationState(locale: _locale, langStatus: status));
  }
}
