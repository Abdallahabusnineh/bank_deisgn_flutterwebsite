import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UsersInfo extends StatelessWidget {
  const UsersInfo({super.key, required this.firstImageUrl, required this.secondImageUrl, required this.thirdImageUrl, required this.numberOfUsers, required this.hint});
final String firstImageUrl, secondImageUrl, thirdImageUrl;
final String numberOfUsers,hint;

  @override
  Widget build(BuildContext context) {
    return   FittedBox(
      child: Row(
        children: [
          CircleAvatar(
            radius: 15.sp,
            backgroundImage: AssetImage(firstImageUrl),
          ),
          CircleAvatar(
            radius: 15.sp,
            backgroundImage: AssetImage(secondImageUrl),
          ),
          CircleAvatar(
            radius: 15.sp,
            backgroundImage: AssetImage(thirdImageUrl),
          ),
          SizedBox(
            width: 1.w,
          ),
          Column(
            children: [
              AutoSizeText(
                numberOfUsers,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              AutoSizeText(
                hint,
                style: TextStyle(
                    color: Colors.white54, fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
