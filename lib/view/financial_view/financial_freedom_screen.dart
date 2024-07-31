import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_widget.dart';
import 'package:bank_deisgn_flutterwebsite/view/financial_view/financial_header.dart';
import 'package:bank_deisgn_flutterwebsite/view/financial_view/widget/financial_freedom_box_layout.dart';
import 'package:bank_deisgn_flutterwebsite/view/financial_view/widget/financial_freedom_button.dart';
import 'package:bank_deisgn_flutterwebsite/view/financial_view/widget/financial_freedom_image_layout.dart';
import 'package:bank_deisgn_flutterwebsite/view/financial_view/widget/financial_freedom_subtitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FinancialFreedomScreen extends StatelessWidget {
  FinancialFreedomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: (10.w), vertical: 5.h),
      child: Column(
        children: [
          FinancialHeader(),
          SizedBox(
            height: 2.h,
          ),
          FinancialFreedomSubtitle(
            subtitle:
                'Our offerings are tailored to meet the unique needs and challenges of each business, and are\ndesigned to provide the funding and support necessary to help business reach their full potential.',
          ),
          SizedBox(
            height: 4.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            primary: true,
            physics: BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FinancialFreedomButton(
                    borderSideColor: Colors.greenAccent.shade400,
                    buttonText: 'Business Line of Credit'),
                SizedBox(
                  width: 3.w,
                ),
                FinancialFreedomButton(
                    borderSideColor: Colors.white,
                    buttonText: 'Equipment Financing'),
                SizedBox(
                  width: 3.w,
                ),
                FinancialFreedomButton(
                    borderSideColor: Colors.white,
                    buttonText: 'Merchant Services'),
              ],
            ),
          ),
          GridView(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            reverse: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: IsResponsive.isWebScreen(context) ? 2 : 1,
              crossAxisSpacing: 2.w,
              mainAxisSpacing: 5.0.h,
              childAspectRatio: 1.0,
            ),
            children: [
              FinancialFreedomBoxLayout(
                title: 'Business Line of Credit',
                subtitle:
                    'A flexible and convenient way to access funds  for your business needs. Use it as you need it and only pay intrest on what you borrow. Perfect for unexpected expenses ',
                benefits: 'Benefits :',
                firstBenefits: 'Easy access to funds as and when needed',
                secondBenefits: 'Flexible repayment options',
                thirdBenefits: 'Intrest only on funds borrowed',
                firstBenefitsIcon: Icons.handshake,
                secondBenefitsIcon: Icons.payment,
                thirdBenefitsIcon: Icons.timer,
              ),
              FinancialFreedomImageLayout(imageUrl: 'assets/busniess3.jpg'),
            ],
          )
        ],
      ),
    );
  }
}
