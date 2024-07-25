import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EmpowerHeader extends StatelessWidget {
  const EmpowerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Text.rich(
        maxLines: 2,
overflow: TextOverflow.ellipsis,
       style: TextStyle(
         fontSize: 20.sp,
       ),
       TextSpan(
         children: [
           TextSpan(
               text: 'Empower Your Business with Our Cutting-Edge ',
               style: TextStyle(
                   fontWeight: FontWeight.bold
               )
           ),
           TextSpan(
             text: 'Features',
           style: TextStyle(
             color: Colors.greenAccent.shade400,
             decoration: TextDecoration.underline,
           decorationColor: Colors.greenAccent.shade400,


           )
           )
         ],

       ),

      ));
  }
}
