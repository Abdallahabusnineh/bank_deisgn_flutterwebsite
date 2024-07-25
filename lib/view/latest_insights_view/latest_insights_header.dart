import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LatestInsightsHeader extends StatelessWidget {
  const LatestInsightsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
      Text.rich(
        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        TextSpan(
          text: 'Latest ',
          children: [
            TextSpan(
              text: 'Insights ',
              style: TextStyle(
                color: Colors.greenAccent.shade400,
                decoration: TextDecoration.underline,
                decorationColor: Colors.greenAccent.shade400,
              ),
            ),
            TextSpan(
              text: 'from Xenon'
            )
          ]
        ),
      ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text.rich(
              TextSpan(text: 'See All', children: [
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
                  borderRadius: BorderRadius.circular(12.sp),
                  side: BorderSide(
                      color: Colors.greenAccent.shade400)),
              backgroundColor: Colors.white),
        )
      ],
    );
  }
}
