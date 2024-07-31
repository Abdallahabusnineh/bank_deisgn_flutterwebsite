import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StreamlineHeader extends StatelessWidget {
  const StreamlineHeader({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
Expanded(child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),maxLines: 2,overflow: TextOverflow.ellipsis,)),
      ],
    );
  }
}
