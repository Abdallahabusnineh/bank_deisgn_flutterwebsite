import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StreamlineHeader extends StatelessWidget {
  const StreamlineHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
Text('Streamline  Operation with Our Tools', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),),
      ],
    );
  }
}
