import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_button_text.dart';
import 'package:bank_deisgn_flutterwebsite/view/marketplace_business/widget/market_place_box_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';
import 'widget/marketplace_business_header.dart';

class MarketplaceBusinessScreen extends StatelessWidget {
  const MarketplaceBusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Column(
        children: [
          MarketplaceBusinessHeader(
            title: 'Marketplace for Business Tools',
            buttonText: 'View More and',
          ),
          SizedBox(
            height: 5.h,
          ),
          GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: IsResponsive.isWebScreen(context) ? 3 : 1,
                  crossAxisSpacing: 2.w,
                  mainAxisSpacing: 10),
              children: [
                MarketPlaceBoxLayout(
                    title: 'Invoice Manger',
                    subtitle: 'Simplify invoice payment and Managment',
                    imageUrl: 'assets/third.jpg',
                    icon: Icons.arrow_forward),
                MarketPlaceBoxLayout(
                    title: 'Budget Planner',
                    subtitle: 'Enhance Financial Planning and Budgeting',
                    imageUrl: 'assets/sec.jpg',
                    icon: Icons.arrow_forward),
                MarketPlaceBoxLayout(
                    title: 'Investment Portfolio',
                    subtitle: 'Monitor and manage your investments Performance',
                    imageUrl: 'assets/first.jpg',
                    icon: Icons.arrow_forward)
              ]),
          SizedBox(height: 4.h,),
          IsResponsive.isWebScreen(context)?SizedBox():CustomButtonText(textButton: 'View More',)
        ],
      ),
    );
  }
}
