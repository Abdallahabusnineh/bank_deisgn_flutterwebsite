import 'package:bank_deisgn_flutterwebsite/custom_widget/appbar.dart';
import 'package:bank_deisgn_flutterwebsite/view/financial_view/financial_freedom_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/unlock_view/unlock_your_business_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../core/utils/is_responsive.dart';
import '../../custom_widget/custom_drawer.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          Container(
            width:MediaQuery.sizeOf(context).width,
            height:MediaQuery.sizeOf(context).height,
          ),
          Container(
            width:MediaQuery.sizeOf(context).width,
            height:MediaQuery.sizeOf(context).height,
          ),
          Container(
            width:MediaQuery.sizeOf(context).width,
            height:MediaQuery.sizeOf(context).height,
          ),




        ],
      ),
    ),
  ],
),
    );
  }
}
