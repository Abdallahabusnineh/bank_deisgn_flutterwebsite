import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';

class SocialImpactHeader extends StatelessWidget {
  const SocialImpactHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return IsResponsive.isWebScreen(context) ?Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Empowering Communities',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize:
                        IsResponsive.isWebScreen(context) ? 13.sp : 13.sp),
              ),
              Text.rich(
                TextSpan(
                    text: 'Our Positive ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.sp),
                    children: [
                      TextSpan(
                          text: 'Social Impact',
                          style: TextStyle(
                              color: Colors.greenAccent.shade400,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.greenAccent.shade400)),
                    ]),
              ),
              Text(
                'Our lending solutions are desinged to help business achieve thier goals and drive economic growth in their local area. ',
                style: TextStyle(color: Colors.black, fontSize: 12.sp),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.greenAccent.shade400,
                  ),
                  Text(
                    'Trustpilot',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.stars_rounded,
                    color: Colors.greenAccent.shade400,
                  ),
                  Icon(
                    Icons.stars_rounded,
                    color: Colors.greenAccent.shade400,
                  ),
                  Icon(
                    Icons.stars_rounded,
                    color: Colors.greenAccent.shade400,
                  ),
                  Icon(
                    Icons.stars_rounded,
                    color: Colors.greenAccent.shade400,
                  ),
                  Icon(
                    Icons.stars_rounded,
                    color: Colors.greenAccent.shade400,
                  ),
                ],
              ),
              Text(
                'TrustScore 5.0|3,724 reviews',
                style: TextStyle(color: Colors.black, fontSize: 9.sp,fontWeight: FontWeight.bold),
              )
            ],
          ),
        )

      ],
    ):
    Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Empowering Communities',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize:
                    IsResponsive.isWebScreen(context) ? 13.sp : 13.sp),
              ),
              Text.rich(
                TextSpan(
                    text: 'Our Positive ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.sp),
                    children: [
                      TextSpan(
                          text: 'Social Impact',
                          style: TextStyle(
                              color: Colors.greenAccent.shade400,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.greenAccent.shade400)),
                    ]),
              ),
              Text(
                'Our lending solutions are desinged to help business achieve thier goals and drive economic growth in their local area. ',
                style: TextStyle(color: Colors.black, fontSize: 12.sp),
              ),
              SizedBox(height: 3.h,),
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10.sp),
                     color: Colors.white,
                     border: Border.all(color: Colors.grey.shade300),
                   ),
                   child: Row(
                     children: [
                       Expanded(

                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Icon(
                                   Icons.star,
                                   color: Colors.greenAccent.shade400,
                                 ),
                                 Text(
                                   'Trustpilot',
                                   style: TextStyle(
                                       fontWeight: FontWeight.bold, fontSize: 15.sp),
                                 )
                               ],
                             ),
                             Row(
                               children: [
                                 Icon(
                                   Icons.stars_rounded,
                                   color: Colors.greenAccent.shade400,
                                 ),
                                 Icon(
                                   Icons.stars_rounded,
                                   color: Colors.greenAccent.shade400,
                                 ),
                                 Icon(
                                   Icons.stars_rounded,
                                   color: Colors.greenAccent.shade400,
                                 ),
                                 Icon(
                                   Icons.stars_rounded,
                                   color: Colors.greenAccent.shade400,
                                 ),
                                 Icon(
                                   Icons.stars_rounded,
                                   color: Colors.greenAccent.shade400,
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),
                       SizedBox(width: 2.w,),
                       Expanded(
                         child: Column(

                                           children: [
                          Text(
                            'TrustScore 5.0 \n3,724 reviews',
                            style: TextStyle(color: Colors.black, fontSize: 14.sp,fontWeight: FontWeight.bold),
                          ),
                                           ],
                                         ),
                       ),
                     ],
                   ),
                 )


            ],
          ),
        ),

      ],
    );
  }
}
