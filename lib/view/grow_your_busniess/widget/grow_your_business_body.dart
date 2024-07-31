import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GrowYourBusinessBody extends StatelessWidget {
  const GrowYourBusinessBody({super.key, required this.emailSupport, required this.companyEmail, required this.firstButtonText, required this.secondButtonText, required this.thirdButtonText});
final String emailSupport,companyEmail,firstButtonText,secondButtonText,thirdButtonText;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(emailSupport,style: TextStyle(color: Colors.greenAccent.shade400,fontSize: 16.sp),maxLines: 2,overflow: TextOverflow.ellipsis,),
              SizedBox(height: 2.h,),
              Text(companyEmail,style: TextStyle(color: Colors.greenAccent.shade400,fontSize: 16.sp),maxLines: 2,overflow: TextOverflow.ellipsis),
            ],
          ),
        ),
        Container(
            height: 15.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.sp),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: TextButton(onPressed: (){}, child:Text(firstButtonText,style: TextStyle(color: Colors.grey.shade400),))),
        SizedBox(width: 1.w,),
        Container(
            height: 15.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.sp),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: TextButton(onPressed: (){}, child:Text(secondButtonText,style: TextStyle(color: Colors.grey.shade400),))),
        SizedBox(width: 1.w,),

        Container(
            height: 15.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.sp),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: TextButton(onPressed: (){}, child:Text(thirdButtonText,style: TextStyle(color: Colors.grey.shade400),))),


      ],
    );
  }
}
