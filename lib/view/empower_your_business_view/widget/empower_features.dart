import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EmpowerFeatures extends StatelessWidget {
  const EmpowerFeatures({super.key, required this.title, required this.subtitle, required this.imageUrl, required this.isVertical});
final String title,subtitle,imageUrl;
final bool isVertical;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        padding: EdgeInsets.all(1.w),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: isVertical?Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Expanded(
                    child: Text(
                      subtitle,

                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(3.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.sp),
                  image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,)
                ),
              ),
            ),
          ],
        ):Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                  image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Expanded(
              child: Text(
subtitle
              ),
            )
          ],
        ),
      ),
    );
  }
}
