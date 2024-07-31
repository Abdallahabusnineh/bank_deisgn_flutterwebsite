import 'package:bank_deisgn_flutterwebsite/view/frequently_asked_questions_view/widget/FrequentlyAskedQuestionsConstant.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'frequently_questions_toggle_button.dart';

class FrequentlyAskedQuestionsHeader extends StatelessWidget {
  const FrequentlyAskedQuestionsHeader({super.key, required this.title, required this.underlineTitleText});
  final String title,underlineTitleText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                  TextSpan
                    (
                      text:title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          style: TextStyle(
                            color: Colors.greenAccent.shade400,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.greenAccent.shade400,
                          ),
                          text: underlineTitleText,
                        )
                      ]
                  )
              ),
            ],
          ),
          ]
    );
  }
}
