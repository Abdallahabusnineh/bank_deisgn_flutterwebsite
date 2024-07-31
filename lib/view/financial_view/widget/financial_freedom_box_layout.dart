import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/utils/is_responsive.dart';
import '../../../custom_widget/custom_widget.dart';

class FinancialFreedomBoxLayout extends StatelessWidget {
  const FinancialFreedomBoxLayout(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.benefits,
      required this.firstBenefits,
      required this.secondBenefits,
      required this.thirdBenefits,
      required this.firstBenefitsIcon,
      required this.secondBenefitsIcon,
      required this.thirdBenefitsIcon});

  final String title,
      subtitle,
      benefits,
      firstBenefits,
      secondBenefits,
      thirdBenefits;

  final IconData firstBenefitsIcon, secondBenefitsIcon, thirdBenefitsIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.sp),
      ),
      child: Padding(
        padding: EdgeInsets.all(3.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.black),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 3.h,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      benefits,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      firstBenefitsIcon,
                      /*Icons.handshake,*/
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Expanded(
                      child: Text(
                        firstBenefits,
                        style: TextStyle(color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Icon(
                      secondBenefitsIcon,
                      /*Icons.payment,*/
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      secondBenefits,
                      overflow: TextOverflow.ellipsis,
                      /*'Flexible repayment options',*/
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Icon(
                      thirdBenefitsIcon,
                      /*Icons.timer,*/
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      thirdBenefits,
                      style: TextStyle(color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
Spacer(),
            Flexible(child: CustomWidget.customSwibeButton()),
          ],
        ),
      ),
    );
  }
}
