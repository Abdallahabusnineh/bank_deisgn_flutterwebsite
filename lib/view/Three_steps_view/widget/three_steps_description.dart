import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThreeStepsDescription extends StatelessWidget {
  const ThreeStepsDescription({super.key, required this.titleStepText, required this.subtitleStepText, required this.numberOfStep, required this.numberOfStepColor});
final String titleStepText;
final String subtitleStepText;
final Color numberOfStepColor;
final int numberOfStep;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          child: CircleAvatar(
            radius: 15.sp,
            backgroundColor: numberOfStepColor,
            child: Text(
              '$numberOfStep',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.sp),
          ),
        ),
        SizedBox(
          width: 1.w,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleStepText,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitleStepText,
                maxLines: 3,
                style: TextStyle(
                    color: Colors.black,

                    overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        )
      ],
    );
  }
}
