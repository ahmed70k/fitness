import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_style.dart';

class ListViewCustom extends StatefulWidget {
  final String unitType;
  final Color backgroundColor;
     const ListViewCustom({
    super.key,
    required this.unitType,
    required this.backgroundColor,
  });

  @override
  State<ListViewCustom> createState() => _ListViewCustomState();
}

class _ListViewCustomState extends State<ListViewCustom> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    List<int> weight = [];
    for (int i = 50; i <= 400; i++) {
      weight.add(i);
    }
    return
      Container(
      height: height * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(44),
        color: widget.backgroundColor,
      ),
      child: Column(
        children: [
          SizedBox(height: height * 0.05),
          Text("${weight[selected]}", style: AppStyle.text81MediumBlack),
          Expanded(
            child: Stack(
              alignment: Alignment.topCenter, // => |
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Container(
                    height: height * 0.06,
                    width: 2,
                    color: AppColors.blackColor,
                  ),
                ),
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    int value = weight[index];
                    bool isEvery5Index = value % 5 == 0;
                    Color lineColor = isEvery5Index
                        ? AppColors.blackColor
                        : AppColors.smallTextLightGrayColor;
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6, // Of Numbers
                      ),
                      child: InkWell(
                        onTap: () {
                          selected = index;
                          setState(() {});
                        },
                        splashColor: Colors.transparent,
                        child: Column(
                          children: [
                            isEvery5Index
                                ? Text(
                                    "$value", // => weight[index]
                                    style: AppStyle.text20MediumStrokeNumber,
                                  )
                                : SizedBox(height: 36), // => |
                            Container(
                              height: isEvery5Index
                                  ? height * 0.04
                                  : height * 0.02,
                              width: 1.5, // |
                              color: lineColor,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: weight.length,
                ),
              ],
            ),
          ),
          Text(widget.unitType, style: AppStyle.text14MediumBlack),
          SizedBox(height: height * 0.05),
          // Spacer(),
        ],
      ),
    );
  }
}
