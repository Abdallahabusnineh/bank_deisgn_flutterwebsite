import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:bank_deisgn_flutterwebsite/custom_widget/custom_widget.dart';
import 'package:bank_deisgn_flutterwebsite/view/unlock_view/unlock_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'unlock_header.dart';

class UnlockYourBusinessScreen extends StatelessWidget {
  const UnlockYourBusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 53),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.sp))),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        children: [
        IsResponsive.isWebScreen(context)?Expanded(child: Header()):Header(),
          Expanded(
            flex: 2,
            child: UnlockBody()
          )
        ],
      ),
    );
  }
}
