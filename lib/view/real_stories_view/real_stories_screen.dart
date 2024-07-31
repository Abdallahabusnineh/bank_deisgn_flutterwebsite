import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_widget.dart';
import 'package:bank_deisgn_flutterwebsite/view/real_stories_view/widget/real_stories_box_qualify.dart';
import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_button_text.dart';
import 'package:bank_deisgn_flutterwebsite/view/real_stories_view/widget/real_stories_header.dart';
import 'package:bank_deisgn_flutterwebsite/view/real_stories_view/widget/real_stories_layout_box.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RealStoriesScreen extends StatelessWidget {
  const RealStoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
      ),
      child: Column(
        children: [
          const RealStoriesHeader(
            title: 'Real Stories, Real Results',
          ),
          SizedBox(
            height: 2.h,
          ),
          GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: IsResponsive.isWebScreen(context) ? 2 : 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              children: [
                Column(
                  children: [
                    RealStoriesLayoutBox(
                        'Abdallah Abu Snineh', 'Flutter Developer',
                        description:
                            'This new capital strucure will quickly help us loose the newcomer badge',
                        imageUrl: 'assets/img.png',
                        stackIsFound: true)
                  ],
                ),
                Column(
                  children: [
                    RealStoriesLayoutBox(
                        'Abdallah Abu Snineh', 'Flutter Developer',
                        description:
                        'This new capital strucure will quickly help us loose the newcomer badge',
                        imageUrl: 'assets/wq.jpg',
                        stackIsFound: false),
                    SizedBox(
                      height: 3.h,
                    ),
                    IsResponsive.isWebScreen(context)
                        ? RealStoriesLayoutBox(
                        'Abdallah Abu Snineh', 'Flutter Developer',
                        description:
                        'This new capital strucure will quickly help us loose the newcomer badge',
                        imageUrl: 'assets/wqq.jpg',
                        stackIsFound: false)
                        : const SizedBox(),
                    IsResponsive.isWebScreen(context)
                        ? const SizedBox()
                        : CustomButtonText(textButton: 'View All Success Stories'),
                  ],
                ),
              ]),
          SizedBox(
            height: 5.h,
          ),
          if (IsResponsive.isWebScreen(context))
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 20.h,
                      padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(15.sp),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text.rich(
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  TextSpan(
                                    text: 'Do I ',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Qualify?',
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                            color: Colors.greenAccent.shade400),

                                      )
                                    ],
                                  ),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                          RealStoriesBoxQualify(text: 'CIBIL Score of 680 or higher'),
                           SizedBox(width: 2.w,),
                           RealStoriesBoxQualify(text: '8 months bank statement')
                            ],
                          ),
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             RealStoriesBoxQualify(text: 'Based in the  india'),
                              SizedBox(width: 5.w,),
                           RealStoriesBoxQualify(text: 'Ideally 6+ months in the business'),
                              SizedBox(width: 5.w,),
                              RealStoriesBoxQualify(text: '100K+ in annual revenue'),
                              SizedBox(width: 5.w,),
                              Expanded(
                                child: CustomWidget.customSwibeButton(),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ],
            )
          else
            Container(
              height: MediaQuery.sizeOf(context).height * .4,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.sp)),
              child: GridView(
                padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
              ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Expanded(
                           child: Container(
                             padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                             child: Text.rich(
                               TextSpan(
                                 text: 'Do I ',
                                 style: TextStyle(
                                   fontSize: 20.sp,
                                 ),
                                 children: [
                                   TextSpan(
                                     text: 'Qualify?',
                                     style: TextStyle(
                                         color: Colors.greenAccent.shade400),
                                   )
                                 ],
                               ),
                               style: const TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold),
                             ),
                           ),
                         ),
                       ],
                     ),
                     SizedBox(height: 1.h,),
                     Row(
                       children: [
                         RealStoriesBoxQualify(text: 'CIBIL Score of 680 or higher'),
                       ],
                     ),
                     SizedBox(height: 1.h,),
                     Row(
                       children: [
                         RealStoriesBoxQualify(text: '8 months bank statement'),
                       ],
                     ),
                     SizedBox(height: 1.h,),
                     Row(
                       children: [
                         RealStoriesBoxQualify(text: 'Based in the  india'),
                       ],
                     ),
                     SizedBox(height: 1.h,),
                     Row(
                       children: [
                         RealStoriesBoxQualify(text: 'Ideally 6+ months in the business'),
                       ],
                     ),
                     SizedBox(height: 1.h,),
                     Row(
                       children: [
                         RealStoriesBoxQualify(text: '100K+ in annual revenue'),
                       ],
                     ),
                     SizedBox(height: 1.h,),
                     Row(
                       children: [
                        RealStoriesBoxQualify(text: '5+ years of experience')
                       ],
                     ),
                     SizedBox(height: 1.h,),
                     Expanded(child: CustomWidget.customSwibeButton()),
                   ],
                                    )
                ],
              ),
            )

        ],
      ),
    );
  }
}
