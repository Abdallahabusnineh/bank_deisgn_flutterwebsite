import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:bank_deisgn_flutterwebsite/view/unlock_view/widget/UnlockFeaturesDescription.dart';
import 'package:bank_deisgn_flutterwebsite/view/unlock_view/widget/users_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../custom_widget/custom_widget.dart';

class UnlockBody extends StatelessWidget {
  const UnlockBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IsResponsive.isWebScreen(context)
            ? Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Column(
                          children: [
                            Text(
                              'Achieve business success with Xenon Bank Our comprehensive finicial solutions help unlock your business potential and take your vision to the next level. ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            CustomWidget.customSwibeButton(),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              '2023 the world\'s \nbest digital banks ',
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Image(
                            image:
                                AssetImage('assets/header_img.png'))),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.all(5.w),
                      child: Column(
                        children: [
                          //SizedBox(height: ),
                          UnlockFeaturesDescription(
                              text: 'Fast, easy loan application',
                              mainAxisAlignment:
                                  IsResponsive.isWebScreen(context)
                                      ? MainAxisAlignment.start
                                      : MainAxisAlignment.center),
                          SizedBox(
                            height: 2.h,
                          ),
                          UnlockFeaturesDescription(
                              text: 'Flexible, repayment options',
                              mainAxisAlignment:
                                  IsResponsive.isWebScreen(context)
                                      ? MainAxisAlignment.start
                                      : MainAxisAlignment.center),
                          SizedBox(
                            height: 2.h,
                          ),
                          UnlockFeaturesDescription(
                              text: 'Competitive interest  rates',
                              mainAxisAlignment:
                                  IsResponsive.isWebScreen(context)
                                      ? MainAxisAlignment.start
                                      : MainAxisAlignment.center),
                          SizedBox(
                            height: 5.h,
                          ),
                          UsersInfo(
                              firstImageUrl: 'assets/img.png',
                              secondImageUrl: 'assets/img.png',
                              thirdImageUrl: 'assets/img.png',
                              numberOfUsers: '12M',
                              hint:'Active Users')
                        ],
                      ),
                    )),
                  ],
                ),
              )
            : Expanded(
                child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    AutoSizeText(
                      'Achieve business success with Xenon Bank Our comprehensive finicial solutions help unlock your business potential and take your vision to the next level. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                      minFontSize: 16,
                      maxLines: 5,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 50.w,
                            child: CustomWidget.customSwibeButton()),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      child: Column(
                        children: [
                          UnlockFeaturesDescription(
                              text: 'Fast, easy loan  application',
                              mainAxisAlignment: IsResponsive.isWebScreen(context)
                                  ? MainAxisAlignment.start
                                  : MainAxisAlignment.center),
                          SizedBox(
                            height: 2.h,
                          ),
                          UnlockFeaturesDescription(
                              text: 'Flexible, repayment options',
                              mainAxisAlignment: IsResponsive.isWebScreen(context)
                                  ? MainAxisAlignment.start
                                  : MainAxisAlignment.center),
                          SizedBox(
                            height: 2.h,
                          ),
                          UnlockFeaturesDescription(
                              text: 'Competitive interest  rates',
                              mainAxisAlignment: IsResponsive.isWebScreen(context)
                                  ? MainAxisAlignment.start
                                  : MainAxisAlignment.center),
                          SizedBox(
                            height: 5.h,
                          ),
                          UsersInfo(

                              firstImageUrl: 'assets/img.png',
                              secondImageUrl: 'assets/img.png',
                              thirdImageUrl: 'assets/img.png',
                              numberOfUsers: '12M',
                              hint:'Active Users')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/header_img.png')),
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
      ],
    );
  }
}
