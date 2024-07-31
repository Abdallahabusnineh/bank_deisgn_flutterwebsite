import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_button_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/utils/is_responsive.dart';

class MarketplaceBusinessHeader extends StatelessWidget {
  const MarketplaceBusinessHeader({super.key, required this.title, required this.buttonText});
final String title,buttonText;
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),maxLines: 2,overflow: TextOverflow.ellipsis,
        ),
        IsResponsive.isWebScreen(context)
            ? CustomButtonText(textButton: buttonText)
            : SizedBox()
      ],
    );
  }
}
