import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/language_data/language_data.dart';
import '../../providers/language_provider/language_provider.dart';

class LanguageListView  extends StatelessWidget {
 final List<int> filteredLanguageList;
   const LanguageListView ({super.key,
     required this.filteredLanguageList
   });
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    final List<String> getLanguageList = LanguageData.getLanguageList(context);
    final List<String> languageCode = LanguageData.languageCode;
    var appLanguage = Provider.of<LanguageProvider>(context);
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          int filteredIndex = filteredLanguageList[index];
          bool selectIndex =
              appLanguage.appLanguage == languageCode[filteredIndex];
          return InkWell(
            splashColor: Colors.transparent,

            onTap: () {
              appLanguage.changeLanguage(languageCode[filteredIndex]);
            },
            child: selectIndex
                ? selectedItemLanguage(getLanguageList[filteredIndex])
                : unSelectedItemLanguage(
              getLanguageList[filteredIndex],
            ),
          );
        },
        separatorBuilder: (context, index) =>
            Divider(color: Colors.red, height: height * 0.08),
        itemCount: filteredLanguageList.length,
      ),
    );
  }
   Widget selectedItemLanguage(String textLanguage) {
     return Row(children: [Text(textLanguage), Spacer(), Icon(Icons.check)]);
   }

   Widget unSelectedItemLanguage(String textLanguage) {
     return Text(textLanguage);
   }

}
