import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:bank_deisgn_flutterwebsite/view/empower_your_business_view/empower_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'empower_mobile_body.dart';
import 'empower_web_body.dart';

class EmpowerYourBusinessScreen extends StatelessWidget {
  const EmpowerYourBusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    IsResponsive.isWebScreen(context)?   EmpowerWebBody():
    EmpowerMobileBody()

      ],
    );
  }
}
