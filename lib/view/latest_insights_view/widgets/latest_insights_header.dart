import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_button_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LatestInsightsHeader extends StatelessWidget {
  const LatestInsightsHeader({super.key, required this.title, required this.underlineTitleText, required this.completeTitle});
final String title,underlineTitleText,completeTitle;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Expanded(
        child: Text.rich(
          style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20.sp),maxLines: 2,overflow: TextOverflow.ellipsis,
          TextSpan(
            text:  title,
            children: [
              TextSpan(
                text:  underlineTitleText,
                style: TextStyle(
                  color: Colors.greenAccent.shade400,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.greenAccent.shade400,
                ),
              ),
              TextSpan(
                text: completeTitle
              )
            ]
          ),
        ),
      ),
        CustomButtonText(textButton: 'See All'),
      ],
    );
  }
}
