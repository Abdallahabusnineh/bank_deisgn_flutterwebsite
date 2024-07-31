import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/custom_fontsize.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/utils/is_responsive.dart';

class FrequentlyAskedQuestions extends StatelessWidget {
  const FrequentlyAskedQuestions(
      {super.key,
      required this.containerColor,
      required this.icon,
      required this.title,
      required this.subTitle});

  final Color containerColor;
  final IconData icon;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(1.w),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(20.sp),
          color: containerColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
                CircleAvatar(
                  radius: 14.sp,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.greenAccent.shade400,
                )
              ],
            ),
            Expanded(
                child: Text(
              subTitle,
              style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 12)
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            )),
          ],
        ),
      ),
    );
  }
}
