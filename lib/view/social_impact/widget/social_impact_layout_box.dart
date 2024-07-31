import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SocialImpactLayoutBox extends StatelessWidget {
  const SocialImpactLayoutBox(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.personImageUrl,
      required this.personName,
      required this.personInfo,
      required this.rate});

  final String title, subtitle, personImageUrl, personName, personInfo, rate;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
                ],
              ),
              SizedBox(
                height: 1.h,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * .1,
                        height: MediaQuery.sizeOf(context).height * .1,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                            image: DecorationImage(
                                image: AssetImage(personImageUrl),
                                )),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              personName,
                              style: TextStyle(
                                  color: Colors.black,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold),
                                  maxLines: 2,
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              personInfo,
                              style: TextStyle(color: Colors.black),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber.shade400,
                            ),
                            Text(rate),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Rating',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
