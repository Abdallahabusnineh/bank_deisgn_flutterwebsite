import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/view/latest_insights_view/latest_insights_header.dart';
import 'package:bank_deisgn_flutterwebsite/view/latest_insights_view/widgets/summary_box_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';

class LatestInsightsScreen extends StatelessWidget {
  const LatestInsightsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Column(
        children: [
          LatestInsightsHeader(),
          SizedBox(
            height: 5.h,
          ),
          GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: IsResponsive.isWebScreen(context) ? 2 : 1,
                  crossAxisSpacing: 2.w,
                  mainAxisSpacing: 10),
              children: [
                SummaryBoxWidget(
                  image: 'assets/busniess1.jpg',
                  date: '21 JUN 24',
                  description:
                      'The future of banking. The next big thing against the competition for banking. The future of banking. The next big thing against the competition for banking.',
                  hint: 'TIPS',
                  title:
                      'The future of banking. The next big thing against the competition for banking.',
                  isVertical: false,
                ),  SummaryBoxWidget(
                  image: 'assets/busniess1.jpg',
                  date: '21 JUN 24',
                  description:
                      'The future of banking. The next big thing against the competition for banking. The future of banking. The next big thing against the competition for banking.',
                  hint: 'TIPS',
                  title:
                      'The future of banking. The next big thing against the competition for banking.',
                  isVertical: true,
                ),  SummaryBoxWidget(
                  image: 'assets/busniess1.jpg',
                  date: '21 JUN 24',
                  description:
                      'The future of banking. The next big thing against the competition for banking. The future of banking. The next big thing against the competition for banking.',
                  hint: 'TIPS',
                  title:
                      'The future of banking. The next big thing against the competition for banking.',
                  isVertical: true,
                ),

                // Row(
                //   children: [
                //     Expanded(
                //       child: Container(
                //         padding: EdgeInsets.symmetric(horizontal: 1.w),
                //
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20.sp),
                //           color: Colors.white,
                //         ),
                //         child: Column(
                //           children: [
                //             Expanded(
                //               flex: 6,
                //               child: Stack(
                //                 children: [
                //                   Container(
                //                     padding: EdgeInsets.all(2.w),
                //                     decoration: BoxDecoration(
                //                       image: DecorationImage(
                //                           image: AssetImage('assets/busniess2.jpg'),
                //                           fit: BoxFit.fill),
                //                       border: Border.all(color: Colors.grey.shade300),
                //                       borderRadius: BorderRadius.circular(20.sp),
                //                     ),
                //                   ),
                //
                //
                //                 ],
                //               ),
                //             ),
                //             Expanded(
                //               child: Row(
                //                 children: [
                //                   Text('ARTICLE',style: TextStyle(color: Colors.greenAccent.shade400),),
                //                 Spacer(),
                //                 Text('JUNE 10,2022',style: TextStyle(color: Colors.grey),)
                //                 ],
                //               ),
                //             ),
                //             Expanded(
                //               flex: 2,
                //               child: Row(
                //                 children: [
                //                   Text('Aveerage Small\n Business Revenue:\nWhat To Know')
                //                 ],
                //               ),
                //             ),
                //             Spacer(),
                //             Expanded(
                //               child: Row(
                //                 children: [
                //                   TextButton(onPressed: () {} , child: Text('Read More', style: TextStyle( fontWeight: FontWeight.bold,color: Colors.greenAccent.shade400)),),
                //                   IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_up_right,color: Colors.greenAccent.shade400,))
                //                 ],
                //               ),
                //             )
                //
                //              ],
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: 2.w,),
                //     Expanded(
                //       child: Container(
                //         padding: EdgeInsets.symmetric(horizontal: 1.w),
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20.sp),
                //           color: Colors.white,
                //         ),
                //         child: Column(
                //           children: [
                //             Expanded(
                //               flex: 6,
                //               child: Stack(
                //                 children: [
                //                   Container(
                //                     padding: EdgeInsets.all(2.w),
                //                     decoration: BoxDecoration(
                //                       image: DecorationImage(
                //                           image: AssetImage('assets/busniess3.jpg'),
                //                           fit: BoxFit.fill),
                //                       border: Border.all(color: Colors.grey.shade300),
                //                       borderRadius: BorderRadius.circular(20.sp),
                //                     ),
                //                   ),
                //
                //
                //                 ],
                //               ),
                //             ),
                //             Expanded(
                //               child: Row(
                //                 children: [
                //                   Text('RESOURCES',style: TextStyle(color: Colors.greenAccent.shade400),),
                //                   Spacer(),
                //                   Text('JUNE 10,2022',style: TextStyle(color: Colors.grey),)
                //                 ],
                //               ),
                //             ),
                //             Expanded(
                //               flex: 2,
                //               child: Row(
                //                 children: [
                //                   Text('Business Loan Terms:\nHow to pick the right \nFinancing Term')
                //                 ],
                //               ),
                //             ),
                //             Spacer(),
                //             Expanded(
                //               child: Row(
                //                 children: [
                //                   TextButton(onPressed: () {} , child: Text('Read More', style: TextStyle( fontWeight: FontWeight.bold,color: Colors.greenAccent.shade400)),),
                //                   IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_up_right,color: Colors.greenAccent.shade400,))
                //                 ],
                //               ),
                //             )
                //
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ]),
        ],
      ),
    );
  }
}
