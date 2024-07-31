import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:bank_deisgn_flutterwebsite/view/Three_steps_view/widget/three_steps_description.dart';
import 'package:bank_deisgn_flutterwebsite/view/Three_steps_view/widget/three_steps_header.dart';
import 'package:bank_deisgn_flutterwebsite/view/Three_steps_view/widget/three_steps_layout_applied.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThreeStepsScreen extends StatelessWidget {
  const ThreeStepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: Column(
        children: [
          ThreeStepsHeader(
            title: 'Three ',
            underlineTitleText: 'Steps ',
            completeTitle: 'to Funding Your Future',
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h),
            child: Row(
              children: [
                Expanded(
                  child: ThreeStepsLayoutApplied(
                      title: 'Xenon', buttonText: 'Apply'),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        ThreeStepsDescription(
                            titleStepText: 'Step 1:Submit Your Application',
                            subtitleStepText: 'Provide us with some basic information about your business and financials to get started',
                            numberOfStep: 1,
                            numberOfStepColor: Colors.greenAccent.shade400),
                        SizedBox(
                          height: 6.h,
                        ),
                        ThreeStepsDescription(
                            titleStepText:'Step 2:Review Your Application',
                            subtitleStepText:                                     'Our Credit Committee will review your application and work with you to ensure all necessary documents are provided.',
                            numberOfStep: 2,
                            numberOfStepColor: Colors.greenAccent.shade100),
                        SizedBox(
                          height: 6.h,
                        ),
                        ThreeStepsDescription(
                            titleStepText:'Step 3:Finalize Your Loan',
                            subtitleStepText:'Complete the online checkout and receive your funds as soon as the sam day.',
                            numberOfStep: 3,
                            numberOfStepColor: Colors.greenAccent.shade100),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
