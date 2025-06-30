import 'package:flutter/material.dart';
import '../../../utils/app_style.dart';

class TextButtonScreen extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const TextButtonScreen({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: onPressed,
        child: Text(text, style: AppStyle.text14RegularWhite),
      ),
    );
  }
}
