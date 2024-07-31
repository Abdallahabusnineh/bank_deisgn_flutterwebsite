import 'package:bank_deisgn_flutterwebsite/core/utils/custom_fontsize.dart';
import 'package:bank_deisgn_flutterwebsite/core/utils/is_responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class LatestInsightLayoutBox extends StatelessWidget {
  const LatestInsightLayoutBox(
      {super.key,
      required this.hint,
      required this.title,
      required this.date,
      required this.subtitle,
      required this.imageUrl,
      required this.imageIsVertical});
  final String hint;
  final bool imageIsVertical;
  final String title, subtitle;
  final String date;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return  imageIsVertical?Container(
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(1.w),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(20.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(1.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        hint,
                        style: TextStyle(color: Colors.greenAccent.shade400,
                            fontSize:getResponsiveFontSize(context, fontSize: IsResponsive.isWebScreen(context)?8:12)
                        ),

                          overflow: TextOverflow.clip,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        date,
                        style: TextStyle(color: Colors.grey
                        ,fontSize:getResponsiveFontSize(context, fontSize: IsResponsive.isWebScreen(context)?8:12)

                        ),
                        overflow: TextOverflow.clip,

                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                          subtitle,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                        )),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Read More',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.greenAccent.shade400)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.arrow_up_right,
                          color: Colors.greenAccent.shade400,
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),):
    Container(
    padding: EdgeInsets.all( 1.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.sp),
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    imageUrl),
                fit: BoxFit.cover),
            border: Border.all(
                color: Colors.grey.shade300),
            borderRadius:
            BorderRadius.circular(20.sp),
          ),
        ),
        SizedBox(height: 2.h,),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              hint,
              style: TextStyle(
                  color: Colors.greenAccent.shade400
              ,overflow: TextOverflow.ellipsis,
              ),
              maxLines: 1,
            ),
            Text(
              date,
              style: TextStyle(color: Colors.grey),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
              title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    fontWeight: FontWeight.bold,


                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                style: TextStyle(color: Colors.grey.shade400),
                subtitle,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text('Read More',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                        color:
                        Colors.greenAccent.shade400),maxLines: 1,),
              ),
            ),
            Expanded(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.arrow_up_right,
                    color: Colors.greenAccent.shade400,
                  )),
            )
          ],
        ),
      ],
    )
      ],
    ),
  );
  }
}
