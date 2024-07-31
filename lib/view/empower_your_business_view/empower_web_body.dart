import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/view/empower_your_business_view/widget/empower_expert_advice.dart';
import 'package:bank_deisgn_flutterwebsite/view/empower_your_business_view/widget/empower_features.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';
import 'widget/empower_header.dart';

class EmpowerWebBody extends StatelessWidget {
  const EmpowerWebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: IsResponsive.isWebScreen(context) ? 2 : 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        children: [
          Column(
            children: [
              Expanded(
                  child: EmpowerHeader(
                title: 'Empower Your Business with Our Cutting-Edge ',
                underlineText: 'Features',
              )),
              SizedBox(
                height: 2.h,
              ),
              EmpowerExpertAdvice(true,
                title: 'Expert Advice and support',
                subtitle:
                    'Our dedicated team is here you every step of the way, with expert guidance ',
                imageUrl: 'assets/img-removebg-preview.png',
                containerColor: Colors.grey.shade200,
              ),
              SizedBox(
                height: 5.h,
              ),
              Expanded(
                child: SizedBox(
                    child: Row(
                  children: [
                    EmpowerExpertAdvice(false,
                      title: 'Wide Range of Loan Products',
                      subtitle:
                          'Choose from a variety of loan options, including short-term working capital and long-term investments.',
                      imageUrl: '',
                      containerColor: Colors.white,

                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                   IsResponsive.isWebScreen(context)? Expanded(
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/finger.png'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20.sp),
                        ),
                      ),
                    ):SizedBox()
                  ],
                )),
              ),SizedBox(height: 2.h,),
             IsResponsive.isWebScreen(context)?SizedBox(): Expanded(
                child: Container(
                  padding: EdgeInsets.all(2.w),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/finger.png'),
                        fit: BoxFit.fill),
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
                   EmpowerFeatures(title: 'Quick Approval Process', subtitle:'Get pre-approved for your business. loan in as little as 24 hours',
             imageUrl: 'assets/chart.png', isVertical: false, ),
              SizedBox(
                height: 3.h,
              ),
              EmpowerFeatures(title: 'Flexible Repayment Options', subtitle: 'Choose a repayment plan that fits your budget, with flexible and affordable options to choose from.', imageUrl: 'assets/img.png', isVertical: IsResponsive.isWebScreen(context)?true:false, )
            ],
          ),
        ]);
  }
}
