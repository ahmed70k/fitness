import 'package:fitness2/ui/authentication/forgot_password/OTP_screen.dart';
 feature_weight_and_height

import 'package:fitness2/ui/authentication/forgot_password/create_new_password.dart';
 develop
import 'package:fitness2/ui/authentication/forgot_password/forgot_password.dart';
import 'package:fitness2/ui/authentication/forgot_password/password_changed.dart';
import 'package:fitness2/ui/authentication/login/login_screen.dart';
import 'package:fitness2/ui/authentication/register/register_screen.dart';
import 'package:fitness2/ui/home_screens/home_screen.dart';
import 'package:fitness2/ui/providers/language_provider/language_provider.dart';
import 'package:fitness2/ui/screens/entry_screen.dart';
import 'package:fitness2/ui/screens/language_screens/language_screen.dart';
import 'package:fitness2/ui/screens/splash_screen/splash_screen.dart';
 feature_weight_and_height
import 'package:fitness2/ui/screens/weight_and_height/height_screen.dart';
import 'package:fitness2/ui/screens/weight_and_height/step3.dart';
import 'package:fitness2/ui/screens/weight_and_height/weight_screen.dart';

 develop
import 'package:fitness2/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'l10n/app_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
      child: MyApp(),
    ),
  );
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
        appBarTheme: AppBarTheme(color: AppColors.primaryColor),
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
 feature_weight_and_height
      initialRoute: WeightScreen.routeName, //WelcomeScreen

      initialRoute: SplashScreen.routeName,
 develop
      routes: {
        LanguageScreen.routeName: (_) => LanguageScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
 feature_weight_and_height
        SplashScreen.routeName: (_) => SplashScreen(),
        EntryScreen.routeName: (_) => EntryScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        ForgotPassword.routeName: (_) => ForgotPassword(),
        OtpScreen.routeName:(_) => OtpScreen(),
        WeightScreen.routeName:(_)=>WeightScreen(),
        HeightScreen.routeName:(_)=> HeightScreen(),
        Step3.routeName:(_)=> Step3(),

        EntryScreen.routeName: (_) => EntryScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        ForgotPassword.routeName: (_) => ForgotPassword(),
        SplashScreen.routeName: (_) => SplashScreen(),
        OtpScreen.routeName: (_) => OtpScreen(),
        CreateNewPassword.routeName: (_) => CreateNewPassword(),
        PasswordChanged.routeName: (_) => PasswordChanged(),
 develop
      },
    );
  }
}
