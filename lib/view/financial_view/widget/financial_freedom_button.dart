import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/utils/is_responsive.dart';

class FinancialFreedomButton extends StatelessWidget {
  const FinancialFreedomButton({super.key, required this.borderSideColor, required this.buttonText});
final  Color borderSideColor;
final String buttonText;

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: IsResponsive.isWebScreen(context)?8.h:12.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.sp),),
        child: ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(BorderSide(color: borderSideColor)),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: (){}, child: Text(buttonText,style: TextStyle(color: Colors.black),)));
  }
}
