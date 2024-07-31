import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/utils/is_responsive.dart';

class RealStoriesLayoutBox extends StatelessWidget {
  const RealStoriesLayoutBox( this.personName, this.personInfo,{super.key, required this.description, required this.imageUrl, required this.stackIsFound});
final String description,imageUrl;
final bool stackIsFound;
final String personName,personInfo;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.sp),

          color: Colors.white,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 10,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          image:  DecorationImage(
                              image: AssetImage(imageUrl),
                            fit: BoxFit.cover
                              ),
                          borderRadius:
                          BorderRadius.circular(20.sp),
                        ),
                      ),
                      stackIsFound?
                      Positioned(
                        right: IsResponsive.isWebScreen(context)
                            ? 0
                            : 3,
                        bottom:
                        IsResponsive.isWebScreen(context)
                            ? 0
                            : 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.shade700,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.sp),
                                bottomRight:
                                Radius.circular(10.sp)),
                          ),
                          child:  Column(
                            children: [
                              Text(
                                personName,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight:
                                    FontWeight.bold),
                              ),
                              Text(
                                personInfo,
                                style: TextStyle(
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ):SizedBox()
                    ],
                  ),
                ),
                Expanded(
                    child: Text(
                      description,
                    ))
              ],
            ),
          ],
        ),
      ),
    );

  }
}
