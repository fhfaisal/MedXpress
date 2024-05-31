import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/utils/theme/theme.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/constants/app_strings.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      locale: const Locale('en', 'US'),
      translations: LanguageTranslations(),
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
