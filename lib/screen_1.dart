import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/utils/app_assets.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  static const String routeName = "/";
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(AppLocalizations.of(context)!.username),
        Image.asset(AppAssets.arrow)

    ],),);
  }
}
