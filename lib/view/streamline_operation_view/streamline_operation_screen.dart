import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/view/streamline_operation_view/widget/stream_online_layout_box.dart';
import 'package:bank_deisgn_flutterwebsite/view/streamline_operation_view/widget/streamline_header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';

class StreamlineOperationScreen extends StatelessWidget {
  const StreamlineOperationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.sp),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        color: Colors.white,
      ),
      child: Column(
        children: [
          StreamlineHeader(
            title: 'Streamline  Operation with Our Tools',
          ),
          SizedBox(
            height: 5.h,
          ),
          GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: IsResponsive.isWebScreen(context) ? 2 : 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5.h),
              children: [
                Column(
                  children: [
                    StreamLineLayoutBox(
                        iconImage: 'assets/calculator.png',
                        title: 'Loan Calculator',
                        subtitle: 'Easily estimate your monthly repayments',
                        buttonText: 'Learn More',
                        firstBenefit: 'input loan amount and intrest rate',
                        secondBenefit:
                        'Get estimate od monthly and total repayments',
                        thirdBenefit: 'Compare different loan options',
                        icon: Icons.verified_rounded),
                    SizedBox(
                      height: 2.h,
                    ),
                    StreamLineLayoutBox(iconImage: 'assets/credit-card.png',
                        title: 'Credit Score Simulator',
                        subtitle: 'Simulate different scenarios to improve your score',
                        buttonText: 'Learn More',
                        firstBenefit: 'input current credit information',
                        secondBenefit: 'Simulate different scenarios to improve your score',
                        thirdBenefit: 'Get tips on how to improve your credit score',
                        icon: Icons.verified_rounded),
                  ],
                ),
                Column(
                  children: [
                    StreamLineLayoutBox(iconImage: 'assets/stock-market.png',
                        title: 'Financial Statement Analyzer',
                        subtitle: 'Understand your business\'s financial health',
                        buttonText: 'Learn More',
                        firstBenefit: 'input financial statements',
                        secondBenefit: 'Generate financial ratios and reports',
                        thirdBenefit: 'Understand the strengths and weaknesses of your business',
                        icon: Icons.verified_rounded),
                    SizedBox(
                      height: 2.h,
                    ),
                    StreamLineLayoutBox(iconImage: 'assets/loan.png',
                        title: 'Loan Comparison Tool',
                        subtitle: 'Find the best loan for your business',
                        buttonText: 'Learn More',
                        firstBenefit: 'Compare loan options from multiple lenders',
                        secondBenefit: 'Get details on interest rates, fees and repayments terms',
                        thirdBenefit: 'Compare the overall costs of differnt loan options',
                        icon: Icons.verified_rounded)
                  ],
                ),
              ]),
        ],
      ),
    );
  }
}
