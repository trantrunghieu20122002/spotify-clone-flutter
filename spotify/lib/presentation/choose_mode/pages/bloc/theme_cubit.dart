import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final themeString = json['theme'] as String?;
    switch (themeString) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'theme': state.name}; // `state.name` trả về chuỗi 'light', 'dark''
  }
}
