import 'package:fitness2/l10n/app_localizations.dart';
import 'package:fitness2/ui/screens/language_screens/language_list_view.dart';
import 'package:fitness2/ui/utils/normalizer.dart';
import 'package:fitness2/utils/app_colors.dart';
import 'package:fitness2/utils/app_style.dart';
import 'package:flutter/material.dart';
import '../../../models/language_data/language_data.dart';
import '../../custom_widget/text_search/text_search.dart';

class LanguageScreen extends StatefulWidget {
  static const String routeName = "/";
  const LanguageScreen({super.key});
  @override
  State<LanguageScreen> createState() => _LanguageUiState();
}

class _LanguageUiState extends State<LanguageScreen> {
  List<int> filteredLanguageList = [];
  @override
  Widget build(BuildContext context) {
    if (filteredLanguageList.isEmpty) {
      filteredLanguageList = List.generate(
        LanguageData.getLanguageList(context).length,
        (index) => index,
      );
    }
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
     // backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        title: Text(
          textAlign: TextAlign.center,
          AppLocalizations.of(context)!.language,
          style:AppStyle.text30BoldWhite
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 23, horizontal: 28),
        child: Column(
          children: [
            TextSearch(
                    onChanged: (String newText) {
                      filteredLanguageListByText(newText);
                    },
                    suffixIcon: Icon(Icons.search),
                  ),
            SizedBox(height: height * 0.04),
            LanguageListView(filteredLanguageList: filteredLanguageList,),
          ],
        ),
      ),
    );
  }

  // Function Filtered Language
  void filteredLanguageListByText(String newText) {
    List<int> filteredList = [];
    List<String> languageList = LanguageData.getLanguageList(context);
    for (int i = 0; i < languageList.length; i++) {
      if (normalizeText(languageList[i]).contains(normalizeText(newText)))
      // if (languageList[i].toLowerCase().contains(newText.toLowerCase()))
      {
        filteredList.add(i);
      }
    }
    setState(() {
      filteredLanguageList = filteredList;
    });
  }
}
