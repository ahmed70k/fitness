import 'package:fitness2/ui/custom_widget/arrow_back/arrow_back.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  static const String routeName = "ForgotPassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, toolbarHeight: 16),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21),
        child: Column(children: [ArrowBack()]),
      ),
    );
  }
}
