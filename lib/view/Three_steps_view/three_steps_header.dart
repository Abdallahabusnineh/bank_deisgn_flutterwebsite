import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThreeStepsHeader extends StatelessWidget {
  const ThreeStepsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       FittedBox(
         child: Text.rich(
           style: TextStyle(fontSize: IsResponsive.isWebScreen(context)?20.sp:18.sp,fontWeight: FontWeight.bold),
             TextSpan(
             text: 'Three ',
             children: [
               TextSpan(
                 text: 'Steps ',
                 style: TextStyle(
                   color: Colors.greenAccent.shade400,
                   decoration: TextDecoration.underline,
                   decorationColor: Colors.greenAccent.shade400,
                 ),
             ),
               TextSpan(text: 'to Funding Your Future')
             ]
             )),
       )
     ]
    );
  }
}
