import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FinancialHeader extends StatelessWidget {
  const FinancialHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IsResponsive.isWebScreen(context)? Text.rich(
        TextSpan(
          style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold
          ),
          children: [
            TextSpan(
              text: 'Financial ',
              style: TextStyle(

              ),
            ),
            WidgetSpan(
              style: TextStyle(
                  backgroundColor:Colors.greenAccent.shade400
              ),
              child: Icon(Icons.arrow_forward,size: 25.sp),
            ),
            TextSpan(
              text: ' Freedom with ',
            ),
            TextSpan(
              text: 'Xenon',
              style: TextStyle(
                color: Colors.greenAccent.shade400,
                decorationColor: Colors.greenAccent.shade400,
                decoration: TextDecoration.underline,


              ),

            )
          ],
        ),
      ):
      Text.rich(
        TextSpan(
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold
          ),
          children: [
            TextSpan(
              text: 'Financial ',
              style: TextStyle(

              ),
            ),
            WidgetSpan(
              style: TextStyle(
                  backgroundColor:Colors.greenAccent.shade400
              ),
              child: Icon(Icons.arrow_forward,size: 20.sp,),
            ),
            TextSpan(
              text: ' Freedom \n',
            ),TextSpan(
              text: 'with ',
            ),
            TextSpan(
              text: 'Xenon',
              style: TextStyle(
                color: Colors.greenAccent.shade400,
                decorationColor: Colors.greenAccent.shade400,
                decoration: TextDecoration.underline,


              ),

            )
          ],
        ),
      )

    );
  }
}
