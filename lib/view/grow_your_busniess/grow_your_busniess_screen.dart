import 'package:bank_deisgn_flutterwebsite/view/grow_your_busniess/widget/grow_your_business_body.dart';
import 'package:bank_deisgn_flutterwebsite/view/grow_your_busniess/widget/grow_your_business_header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GrowYourBusinessScreen extends StatelessWidget {
  const GrowYourBusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 10.w),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 53),
        borderRadius: BorderRadius.all( Radius.circular(20.sp)),
      ),
child: Column(
  children: [
Expanded(
    child: GrowYourBusinessHeader(title: 'Ready to Grow Your ', underlineTitle: 'Business?', subtitle: 'Apply for Your Business Loan Today!')),
SizedBox(height: 5.h,),
    Divider(),
SizedBox(height: 5.h,),
GrowYourBusinessBody(emailSupport: 'abdallahabusnineh2002@gmail.com', companyEmail: 'menaItech@gmail.com', firstButtonText: 'WhatsApp', secondButtonText: 'Telegram', thirdButtonText: 'Twitter')


  ],
),
    );
  }
}

