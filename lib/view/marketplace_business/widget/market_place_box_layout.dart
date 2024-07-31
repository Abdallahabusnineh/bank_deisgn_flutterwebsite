import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MarketPlaceBoxLayout extends StatelessWidget {
  const MarketPlaceBoxLayout({super.key, required this.title, required this.subtitle, required this.imageUrl, required this.icon});
final String title,subtitle,imageUrl;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return     Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle
                    ),
                    height: MediaQuery.of(context).size.height*.95,
                    width: MediaQuery.of(context).size.width*.95,
                    child: Image.asset(imageUrl,fit: BoxFit.contain,)
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20.sp),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Column(
                    children: [
                      Text(title,style: TextStyle(fontWeight: FontWeight.bold,),maxLines: 2,overflow:TextOverflow.ellipsis),
                      Text(subtitle,maxLines: 2,overflow:TextOverflow.ellipsis),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.shade400,
                          ),
                          child: Icon(icon, size: 14.sp,color: Colors.white)),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),

      ],
    );
  }
}
