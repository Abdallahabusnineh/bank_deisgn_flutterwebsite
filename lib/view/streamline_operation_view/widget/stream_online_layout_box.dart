import 'package:bank_deisgn_flutterwebsite/core/utils/custom_fontsize.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StreamLineLayoutBox extends StatelessWidget {
  const StreamLineLayoutBox(
      {super.key,
      required this.iconImage,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      required this.firstBenefit,
      required this.secondBenefit,
      required this.thirdBenefit,
      required this.icon});

  final String iconImage,
      title,
      subtitle,
      buttonText,
      firstBenefit,
      secondBenefit,
      thirdBenefit;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Padding(
          padding: EdgeInsets.all(1.w),
          child: Column(
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage(iconImage),
                    height: 20.sp,
                    width: 20.sp,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                            fontSize: getResponsiveFontSize(context, fontSize: 18),
                          ),
                          maxLines: 1,
                        ),
                        Text(
                          subtitle,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black,
                            fontSize: getResponsiveFontSize(context, fontSize: 13),
      
                          ),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.greenAccent.shade400,
                      size: getResponsiveFontSize(context, fontSize: 11)
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Expanded(
                      child: Text(
                        firstBenefit,
                        style: TextStyle(color: Colors.black, fontSize: getResponsiveFontSize(context, fontSize: 11)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.greenAccent.shade400,
                      size: getResponsiveFontSize(context, fontSize: 11)
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Expanded(
                      child: Text(
                        secondBenefit,
                        style: TextStyle(color: Colors.black,fontSize: getResponsiveFontSize(context, fontSize: 11)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      icon,
                      size: getResponsiveFontSize(context, fontSize: 11)
                     ,
                      color: Colors.greenAccent.shade400,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Expanded(
                      child: Text(
                        thirdBenefit,
                        style: TextStyle(color: Colors.black, fontSize: getResponsiveFontSize(context, fontSize: 11),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                      iconSize: MaterialStateProperty.all(20.sp),
                        side: MaterialStateProperty.all(
                            BorderSide(color: Colors.greenAccent.shade400)),
                      ),
                      onPressed: () {},
                      child: Text(
                        buttonText,
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
