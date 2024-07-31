import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/view/latest_insights_view/widgets/latest_insight_layout_box.dart';
import 'package:bank_deisgn_flutterwebsite/view/latest_insights_view/widgets/latest_insights_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';

class LatestInsightsScreen extends StatelessWidget {
  const LatestInsightsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        color: Colors.white,
      ),
      margin: EdgeInsets.all(15.sp),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Column(
        children: [
          LatestInsightsHeader(
            title: 'Latest ',
            underlineTitleText: 'insights ',
            completeTitle: ' from Xenon',
          ),
          SizedBox(
            height: 5.h,
          ),
          IsResponsive.isWebScreen(context)?
          Row(
            children: [
              Expanded(
                flex: 3,
                child: LatestInsightLayoutBox(
                  hint: 'Tips',
                  title: '5 accounting tips for small businesses owners',
                  date: 'JUNE 10,2022',
                  subtitle:
                  'As a small business owner,you have a lot of priorities that demand your attention. Your finances aren\'t going to manage themselves. so it is important to make your accounting and bookkeeping as simple as possible.',
                  imageUrl: 'assets/busniess1.jpg',
                  imageIsVertical: false,
                ),
              ),
              Expanded(
                child: LatestInsightLayoutBox(
                  hint: 'Tips',
                  title: '5 accounting tips for small businesses owners',
                  date: 'JUNE 10,2022',
                  subtitle:
                  'As a small business owner,you have a lot of priorities that demand your attention. Your finances aren\'t going to manage themselves. so it is important to make your accounting and bookkeeping as simple as possible.',
                  imageUrl: 'assets/busniess2.jpg',
                  imageIsVertical: false,
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
                Expanded(
                  child: LatestInsightLayoutBox(
                    hint: 'Tips',
                    title: '5 accounting tips for small businesses owners',
                    date: 'JUNE 10,2022',
                    subtitle:
                    'As a small business owner,you have a lot of priorities that demand your attention. Your finances aren\'t going to manage themselves. so it is important to make your accounting and bookkeeping as simple as possible.',
                    imageUrl: 'assets/busniess1.jpg',
                    imageIsVertical: false,
                  ),
                ),
            ],
          ):Column(
            children: [
              LatestInsightLayoutBox(
                hint: 'Tips',
                title: '5 accounting tips for small businesses owners',
                date: 'JUNE 10,2022',
                subtitle:
                'As a small business owner,you have a lot of priorities that demand your attention. Your finances aren\'t going to manage themselves. so it is important to make your accounting and bookkeeping as simple as possible.',
                imageUrl: 'assets/busniess1.jpg',
                imageIsVertical: false,
              ),
              LatestInsightLayoutBox(
                hint: 'Tips',
                title: '5 accounting tips for small businesses owners',
                date: 'JUNE 10,2022',
                subtitle:
                'As a small business owner,you have a lot of priorities that demand your attention. Your finances aren\'t going to manage themselves. so it is important to make your accounting and bookkeeping as simple as possible.',
                imageUrl: 'assets/busniess2.jpg',
                imageIsVertical: false,
              ),
              LatestInsightLayoutBox(
                hint: 'Tips',
                title: '5 accounting tips for small businesses owners',
                date: 'JUNE 10,2022',
                imageUrl: 'assets/busniess2.jpg',
                subtitle:
                'As a small business owner,you have a lot of priorities that demand your attention. Your finances aren\'t going to manage themselves. so it is important to make your accounting and bookkeeping as simple as possible.',
                imageIsVertical: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
