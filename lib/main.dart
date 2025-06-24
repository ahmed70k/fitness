
import 'package:fitness2/ui/providers/language_provider/language_provider.dart';
import 'package:fitness2/ui/screens/language_screens/language_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => LanguageProvider(),

      child:  MyApp()));
}

class MyApp extends StatelessWidget {

 const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<LanguageProvider>(context);

    return MaterialApp(
      locale: Locale(appLanguage.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'fitness',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.red),// primary
        scaffoldBackgroundColor: Colors.grey
      ),
      initialRoute: LanguageScreen.routeName,
      routes: {
        LanguageScreen.routeName:(_)=>LanguageScreen(),

      },
    );
  }
}