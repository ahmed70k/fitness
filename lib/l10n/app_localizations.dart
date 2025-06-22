import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it')
  ];

  /// No description provided for @start_your_fitness_journey.
  ///
  /// In en, this message translates to:
  /// **'Start your Fitness Journey'**
  String get start_your_fitness_journey;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @continue_as_a_guest.
  ///
  /// In en, this message translates to:
  /// **'Continue as a guest'**
  String get continue_as_a_guest;

  /// No description provided for @welcome_back_glad_to_see_you_again.
  ///
  /// In en, this message translates to:
  /// **'Welcome back! Glad to see you, Again!'**
  String get welcome_back_glad_to_see_you_again;

  /// No description provided for @enter_your_email.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enter_your_email;

  /// No description provided for @enter_your_password.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enter_your_password;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgot_password;

  /// No description provided for @dont_have_an_account_register_now.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account? Register Now'**
  String get dont_have_an_account_register_now;

  /// No description provided for @hello_register_to_get_started.
  ///
  /// In en, this message translates to:
  /// **'Hello! Register to get started'**
  String get hello_register_to_get_started;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirm_password;

  /// No description provided for @dont_worry_it_occurs.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry! It occurs. Please enter the email address linked with your account.'**
  String get dont_worry_it_occurs;

  /// No description provided for @send_code.
  ///
  /// In en, this message translates to:
  /// **'Send Code'**
  String get send_code;

  /// No description provided for @otp_verification.
  ///
  /// In en, this message translates to:
  /// **'OTP Verification'**
  String get otp_verification;

  /// No description provided for @enter_the_verification_code.
  ///
  /// In en, this message translates to:
  /// **'Enter the verification code we just sent on your email address.'**
  String get enter_the_verification_code;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @create_new_password.
  ///
  /// In en, this message translates to:
  /// **'Create new password'**
  String get create_new_password;

  /// No description provided for @your_new_password_must_be_unique_from_those_previously_used.
  ///
  /// In en, this message translates to:
  /// **'Your new password must be unique from those previously used.'**
  String get your_new_password_must_be_unique_from_those_previously_used;

  /// No description provided for @new_password.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get new_password;

  /// No description provided for @reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get reset_password;

  /// No description provided for @password_changed.
  ///
  /// In en, this message translates to:
  /// **'Password Changed!'**
  String get password_changed;

  /// No description provided for @your_password_has_been_changed_successfully.
  ///
  /// In en, this message translates to:
  /// **'Your password has been changed successfully.'**
  String get your_password_has_been_changed_successfully;

  /// No description provided for @back_to_login.
  ///
  /// In en, this message translates to:
  /// **'Back to Login'**
  String get back_to_login;

  /// No description provided for @start_your_fitness.
  ///
  /// In en, this message translates to:
  /// **'Start your fitness journey\nwith our app\'s guidance and support.'**
  String get start_your_fitness;

  /// No description provided for @drink.
  ///
  /// In en, this message translates to:
  /// **'Drink'**
  String get drink;

  /// No description provided for @lets_start.
  ///
  /// In en, this message translates to:
  /// **'Lets start'**
  String get lets_start;

  /// No description provided for @what_is_your_weight.
  ///
  /// In en, this message translates to:
  /// **'What is your weight?'**
  String get what_is_your_weight;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @what_is_your_height.
  ///
  /// In en, this message translates to:
  /// **'What is your height?'**
  String get what_is_your_height;

  /// No description provided for @inches.
  ///
  /// In en, this message translates to:
  /// **'Inches'**
  String get inches;

  /// No description provided for @what_do_you_want_to_achieve.
  ///
  /// In en, this message translates to:
  /// **'What do you want to achieve?'**
  String get what_do_you_want_to_achieve;

  /// No description provided for @what_you_are_going_to_select_will_effect_your_workout_program.
  ///
  /// In en, this message translates to:
  /// **'What you are going to select will effect your workout program'**
  String get what_you_are_going_to_select_will_effect_your_workout_program;

  /// No description provided for @strength_training_for_muscle_gain.
  ///
  /// In en, this message translates to:
  /// **'Strength Training for Muscle Gain'**
  String get strength_training_for_muscle_gain;

  /// No description provided for @high_intensity_interval_training.
  ///
  /// In en, this message translates to:
  /// **'High-Intensity Interval Training for Fat Loss'**
  String get high_intensity_interval_training;

  /// No description provided for @cardiovascular_exercise.
  ///
  /// In en, this message translates to:
  /// **'Cardiovascular Exercise for Fat Loss'**
  String get cardiovascular_exercise;

  /// No description provided for @functional_training_for_overall.
  ///
  /// In en, this message translates to:
  /// **'Functional Training for Overall Fitness'**
  String get functional_training_for_overall;

  /// No description provided for @start_now.
  ///
  /// In en, this message translates to:
  /// **'Start Now'**
  String get start_now;

  /// No description provided for @hi_youssef.
  ///
  /// In en, this message translates to:
  /// **'Hi!,Youssef'**
  String get hi_youssef;

  /// No description provided for @your_schedule.
  ///
  /// In en, this message translates to:
  /// **'Your Schedule'**
  String get your_schedule;

  /// No description provided for @todays_activity.
  ///
  /// In en, this message translates to:
  /// **'Today’s Activity'**
  String get todays_activity;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @warm_up.
  ///
  /// In en, this message translates to:
  /// **'WarmUp'**
  String get warm_up;

  /// No description provided for @run.
  ///
  /// In en, this message translates to:
  /// **'Run km '**
  String get run;

  /// No description provided for @muscle_up.
  ///
  /// In en, this message translates to:
  /// **'Muscle Up'**
  String get muscle_up;

  /// No description provided for @today_is.
  ///
  /// In en, this message translates to:
  /// **'Today is'**
  String get today_is;

  /// No description provided for @december.
  ///
  /// In en, this message translates to:
  /// **'December'**
  String get december;

  /// No description provided for @pushups_session.
  ///
  /// In en, this message translates to:
  /// **'Pushups session'**
  String get pushups_session;

  /// No description provided for @your_statistics.
  ///
  /// In en, this message translates to:
  /// **'Your Statistics'**
  String get your_statistics;

  /// No description provided for @weekly_average.
  ///
  /// In en, this message translates to:
  /// **'Weekly Average'**
  String get weekly_average;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// No description provided for @week.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get week;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @calories.
  ///
  /// In en, this message translates to:
  /// **'Calories'**
  String get calories;

  /// No description provided for @mon.
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get mon;

  /// No description provided for @tues.
  ///
  /// In en, this message translates to:
  /// **'Tues'**
  String get tues;

  /// No description provided for @wed.
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get wed;

  /// No description provided for @thurs.
  ///
  /// In en, this message translates to:
  /// **'Thurs'**
  String get thurs;

  /// No description provided for @fri.
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get fri;

  /// No description provided for @sat.
  ///
  /// In en, this message translates to:
  /// **'Sat'**
  String get sat;

  /// No description provided for @sun.
  ///
  /// In en, this message translates to:
  /// **'Sun'**
  String get sun;

  /// No description provided for @walk.
  ///
  /// In en, this message translates to:
  /// **'Walk'**
  String get walk;

  /// No description provided for @miles.
  ///
  /// In en, this message translates to:
  /// **'Miles'**
  String get miles;

  /// No description provided for @youssef_labidi.
  ///
  /// In en, this message translates to:
  /// **'Youssef Labidi'**
  String get youssef_labidi;

  /// No description provided for @app_settings.
  ///
  /// In en, this message translates to:
  /// **'App Settings'**
  String get app_settings;

  /// No description provided for @account_informations.
  ///
  /// In en, this message translates to:
  /// **'Account Informations'**
  String get account_informations;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @text_size.
  ///
  /// In en, this message translates to:
  /// **'Text Size'**
  String get text_size;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @terms_of_service.
  ///
  /// In en, this message translates to:
  /// **'Terms Of Service'**
  String get terms_of_service;

  /// No description provided for @westheimer.
  ///
  /// In en, this message translates to:
  /// **'Westheimer'**
  String get westheimer;

  /// No description provided for @started.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get started;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @get_ready.
  ///
  /// In en, this message translates to:
  /// **'Get ready'**
  String get get_ready;

  /// No description provided for @work.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get work;

  /// No description provided for @rest.
  ///
  /// In en, this message translates to:
  /// **'Rest'**
  String get rest;

  /// No description provided for @training_completed_successfully.
  ///
  /// In en, this message translates to:
  /// **'Training completed successfully'**
  String get training_completed_successfully;

  /// No description provided for @continuee.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continuee;

  /// No description provided for @upcoming_workout.
  ///
  /// In en, this message translates to:
  /// **'Upcoming workout'**
  String get upcoming_workout;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'de', 'en', 'es', 'fr', 'it'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fr': return AppLocalizationsFr();
    case 'it': return AppLocalizationsIt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
