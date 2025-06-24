
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';

class LanguageData{
static List<String> getLanguageList (BuildContext context){

    return [
      AppLocalizations.of(context)!.english,
      AppLocalizations.of(context)!.arabic,
      AppLocalizations.of(context)!.french,
      AppLocalizations.of(context)!.german,
      AppLocalizations.of(context)!.spanish,
      AppLocalizations.of(context)!.italian,
    ];
  }
static final List<String> languageCode = ["en", "ar", "fr", "de", "es", "it"];
}