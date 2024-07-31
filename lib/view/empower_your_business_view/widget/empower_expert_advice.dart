import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/utils/is_responsive.dart';

class EmpowerExpertAdvice extends StatelessWidget {
  const EmpowerExpertAdvice(this.isTakenImage,
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.containerColor});

  final String title, subtitle, imageUrl;
  final Color containerColor;
  final bool isTakenImage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(1.w),
            decoration: BoxDecoration(
              color: containerColor,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(20.sp),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Expanded(
                  child: Text(
                    subtitle,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          isTakenImage
              ? Positioned(
                  right: IsResponsive.isWebScreen(context) ? 0 : 3,
                  bottom: IsResponsive.isWebScreen(context) ? 0 : 3,
                  child: CircleAvatar(
                    backgroundColor: Colors.white38,
                    backgroundImage: AssetImage(imageUrl),
                    radius: IsResponsive.isWebScreen(context) ? 5.w : 10.w,
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
