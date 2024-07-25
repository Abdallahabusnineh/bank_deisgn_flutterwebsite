import 'package:bank_deisgn_flutterwebsite/view/frequently_asked_questions_view/FrequentlyAskedQuestionsConstant.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FrequentlyAskedQuestionsHeader extends StatelessWidget {
  const FrequentlyAskedQuestionsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                  TextSpan
                    (
                      text: "Frequently Asked",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          style: TextStyle(
                            color: Colors.greenAccent.shade400,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.greenAccent.shade400,
                          ),
                          text: " Questions",
                        )
                      ]
                  )
              ),
            ],
          ),
          SizedBox(width: 2.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleButtons(
                direction: Axis.horizontal,
                isSelected: FrequentlyAskedQuestionsisSelcted,
                onPressed: (int index) {},
                color: Colors.black,
                selectedColor: Colors.black,
                renderBorder: false,
                textStyle: TextStyle(fontSize: 15.sp),
                children: List.generate(AskedQuestionslabels.length, (index) {
                  return Container(

                    padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.sp),
                      border: Border.all(color: FrequentlyAskedQuestionsisSelcted[index]?Colors.greenAccent.shade400:Colors.transparent),
                    ),
                    child: Text(
                      AskedQuestionslabels[index],
                      style: TextStyle(
                          fontWeight: FrequentlyAskedQuestionsisSelcted[index]
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  );
                }),
              ),
            ],
          ),
          ]
    );
  }
}
