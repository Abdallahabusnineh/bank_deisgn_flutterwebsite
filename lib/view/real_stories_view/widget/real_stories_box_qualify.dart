import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/utils/is_responsive.dart';

class RealStoriesBoxQualify extends StatelessWidget {
  const RealStoriesBoxQualify({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return     Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius:
            BorderRadius.circular(10.sp)),
        child: Text(
          text,maxLines: 2,overflow: TextOverflow.ellipsis,),
      ),
    );
  }
}
