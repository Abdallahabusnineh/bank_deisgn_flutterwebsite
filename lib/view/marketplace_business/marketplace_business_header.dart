import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';

class MarketplaceBusinessHeader extends StatelessWidget {
  const MarketplaceBusinessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(
          'Marketplace for Business Tools',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
        ),
        Spacer(),
        IsResponsive.isWebScreen(context)
            ? TextButton(
          onPressed: () {},
          child: Text.rich(
              TextSpan(text: 'View More', children: [
                WidgetSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 12.sp,
                  ),
                ),
              ])),
          style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  side: BorderSide(
                      color: Colors.greenAccent.shade400)),
              backgroundColor: Colors.white),
        )
            : SizedBox()
      ],
    );
  }
}
