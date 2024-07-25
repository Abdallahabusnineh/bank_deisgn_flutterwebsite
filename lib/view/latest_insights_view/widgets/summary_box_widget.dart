import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SummaryBoxWidget extends StatelessWidget {
  final String hint;
  final String title;
  final String date;
  final String image;
  final String description;
  final bool isVertical;

  const SummaryBoxWidget({super.key,
    required this.hint,
    required this.isVertical,
    required this.title,
    required this.date,
    required this.image,
    required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(isVertical)
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(2.w),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill),
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if(isVertical)
        SizedBox(
          width: 2.w,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: Colors.white,
            ),
            child: Column(
              children: [
                if(!isVertical)
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(2.w),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill),
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(2.w),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  hint,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.greenAccent.shade400),
                                ),
                              ),
                              Text(
                                date,
                                style: const TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        FittedBox(
                          child: Row(
                            children: [
                              Text(
                                description,
                                maxLines: 3,
                                style: const TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Spacer(),
                        Expanded(
                          child: Row(
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
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
