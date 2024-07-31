import 'package:bank_deisgn_flutterwebsite/custom_widget/appbar.dart';
import 'package:bank_deisgn_flutterwebsite/view/Three_steps_view/three_steps_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/empower_your_business_view/empower_your_business_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/financial_view/financial_freedom_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/frequently_asked_questions_view/frequently_asked_questions_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/grow_your_busniess/grow_your_busniess_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/latest_insights_view/widgets/latest_insights_header.dart';
import 'package:bank_deisgn_flutterwebsite/view/marketplace_business/marketplace_business_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/real_stories_view/real_stories_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/social_impact/widget/social_impact_header.dart';
import 'package:bank_deisgn_flutterwebsite/view/social_impact/social_impact_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/streamline_operation_view/streamline_operation_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/unlock_view/unlock_your_business_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../core/utils/is_responsive.dart';
import '../../custom_widget/custom_drawer.dart';
import 'latest_insights_view/latest_insights_screen.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    */return  Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: IsResponsive.isWebScreen(context)?CustomAppBar.webAppBar():CustomAppBar.mobileAppBar(),
   endDrawer: IsResponsive.isWebScreen(context)?null:CustomDrawer.drawer(),
body: Row(
  children: [
    Expanded(
      child: ListView(
        primary: true,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
        UnlockYourBusinessScreen(),
        FinancialFreedomScreen(),
     EmpowerYourBusinessScreen(),
        SocialImpactScreen(),
          RealStoriesScreen(),
          FrequentlyAskedQuestionsScreen(),
          LatestInsightsScreen(),
          ThreeStepsScreen(),
          StreamlineOperationScreen(),
          MarketplaceBusinessScreen(),
          GrowYourBusinessScreen(),





        ],
      ),
    ),
  ],
),
    );
  }
}
