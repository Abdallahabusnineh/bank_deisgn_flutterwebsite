import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'FrequentlyAskedQuestionsConstant.dart';

class FrequentlyQuestionsToggleButton extends StatelessWidget {
  const FrequentlyQuestionsToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ToggleButtons(
            isSelected: FrequentlyAskedQuestionsisSelcted,
            onPressed: (int index) {},
            color: Colors.black,
            selectedColor: Colors.black,
            renderBorder: false,
            highlightColor: Colors.greenAccent.shade400,
            textStyle: TextStyle(fontSize: 15.sp),
            children: List.generate(AskedQuestionslabels.length, (index) {
              return Row(
                children: [
                  Container(
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
                  ),
                  SizedBox(width: 1.5.w,)
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
