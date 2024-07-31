import 'package:bank_deisgn_flutterwebsite/view/social_impact/widget/social_impact_header.dart';
import 'package:bank_deisgn_flutterwebsite/view/social_impact/widget/social_impact_layout_box.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';

class SocialImpactScreen extends StatelessWidget {
  const SocialImpactScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: SocialImpactHeader(
                  hint: 'Empowering Communities',
                  title: 'Our Positive ',
                  subtitle:
                      'Our lending solutions are desinged to help business achieve thier goals and drive economic growth in their local area. ',
                  secHint: 'Trustpilot',
                  rate: 'TrustScore 5.0|3,724 reviews',
                  firstIcon: Icons.star,
                  secIcon: Icons.stars_rounded,
                  underlineTitle: 'Social Impact',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            children: [
              const SocialImpactLayoutBox(
                title: 'Transformative Experience',
                subtitle:
                    'Working with Xenon Bank was a transformative experience for my business. The tailored solutions and friendly staff exceeded my expectations. I highly recommended them.',
                personImageUrl: 'assets/img.png',
                personName: 'Cody Fisher',
                personInfo: 'small business owner',
                rate: '5.0',
              ),
              SizedBox(
                width: 2.w,
              ),
              IsResponsive.isWebScreen(context)
                  ? const SocialImpactLayoutBox(
                      title: 'Expert Support',
                      subtitle:
                          'Working with Xenon Bank was a transformative experience for my business. The tailored solutions and friendly staff exceeded my expectations. I highly recommended them. ',
                      personImageUrl: 'assets/img.png',
                      personName: 'Abdallah Abu Snineh',
                      personInfo: 'Flutter Developer',
                      rate: '5.0',)
                  : const SizedBox(),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          IsResponsive.isWebScreen(context)
              ? Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios_new))),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios))),
                    const Spacer(),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  side: BorderSide(
                                      color: Colors.greenAccent.shade400)),
                              backgroundColor: Colors.white),
                          child: Text.rich(TextSpan(text: 'see All', children: [
                            WidgetSpan(
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 15.sp,
                              ),
                            ),
                          ])),
                        ),
                      ],
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios_new))),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios))),
                  ],
                ),
          SizedBox(
            height: 2.h,
          ),
          IsResponsive.isWebScreen(context)
              ? Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 25.h,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/1screenshot.png'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 15.h,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/2screenshot.png'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
