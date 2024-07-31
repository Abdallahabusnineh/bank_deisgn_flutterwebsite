import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EmpowerHeader extends StatelessWidget {
  const EmpowerHeader({super.key, required this.title, required this.underlineText});
final String title,underlineText;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Text.rich(
      overflow: TextOverflow.ellipsis,
       style: TextStyle(
         fontSize: 17.sp,
       ),
       TextSpan(
         children: [
           TextSpan(
               text: title,
               style: TextStyle(
                   fontWeight: FontWeight.bold
               )
           ),
           TextSpan(
             text: underlineText,
           style: TextStyle(
             color: Colors.greenAccent.shade400,
             decoration: TextDecoration.underline,
           decorationColor: Colors.greenAccent.shade400,

           )
           )
         ],

       ),
maxLines: 2,
      ));
  }
}
