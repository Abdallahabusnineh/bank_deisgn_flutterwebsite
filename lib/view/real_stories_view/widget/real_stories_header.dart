import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_button_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RealStoriesHeader extends StatelessWidget {
  const RealStoriesHeader({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,),
            maxLines: 2,
             ),
        ),
        CustomButtonText(textButton: 'View All Success Stories'),
      ],
    );
  }
}
