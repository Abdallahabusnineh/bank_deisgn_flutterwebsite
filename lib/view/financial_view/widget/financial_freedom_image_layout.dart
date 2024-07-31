import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FinancialFreedomImageLayout extends StatelessWidget {
  const FinancialFreedomImageLayout({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20.sp),
      ),
    );

  }
}
