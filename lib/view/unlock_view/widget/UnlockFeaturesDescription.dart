import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class UnlockFeaturesDescription extends StatelessWidget {
  const UnlockFeaturesDescription({super.key, required this.text,required this.mainAxisAlignment});
final String text;
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //mainAxisAlignment:  MainAxisAlignment.center,
      children: [
        if(!IsResponsive.isWebScreen(context))
        Expanded(child: SizedBox()),
        SizedBox(child: CircleAvatar(radius: 8.sp,backgroundColor: Colors.greenAccent.shade400),),
       SizedBox(width: 1.w,),
      //  Expanded(child: SizedBox()),
        Expanded(
          child: Column(
            children: [
              Text(text,style: const TextStyle(color: Colors.white54)),
            ],
          ),
        ),
        Expanded(child: SizedBox())


      ],
    );
  }
}
