import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'dart:ui';

import 'myapp_homescreen.dart';

 Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: const MyApp(),
    supportedLocales: const [Locale("en", "US"), Locale("es", "US"),Locale("hi", "IN"),Locale("ur", "PK")],


    path: "assets/translations",
    fallbackLocale: const Locale("en", "US"),
    saveLocale: false,

  ));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
home: const LocalizationPage(),
    );
  }
}
