import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButtonText extends StatelessWidget {
  const CustomButtonText({super.key, required this.textButton});
final String textButton;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text.rich(TextSpan(
          text: textButton,
          children: [
            WidgetSpan(
              style: const TextStyle(
                color: Colors.black,
              ),
              child: Icon(
                Icons.arrow_forward,
                size: 15.sp,
              ),
            ),
          ])),
      style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.sp),
              side: BorderSide(
                  color: Colors.greenAccent.shade400)),
          backgroundColor: Colors.white),
    );
  }
}
