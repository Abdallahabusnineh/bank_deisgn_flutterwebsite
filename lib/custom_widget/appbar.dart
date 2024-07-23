import 'package:bank_deisgn_flutterwebsite/core/utils/custom_fontsize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../core/utils/constant.dart';

class CustomAppBar {
  static BuildContext get context => Get.context!;

  static PreferredSizeWidget mobileAppBar() {
   return AppBar(
     backgroundColor: Color.fromARGB	(255,		0,0,53),
    iconTheme: IconThemeData(color: Colors.greenAccent.shade400),
     title: Row(
       children: [
         Image(
           image: AssetImage('assets/Screenshot__44_-removebg-preview.png'),
           width: 20.w,
           height: 15.h,
         ),

       ],

     ),


   );
  }

  static PreferredSizeWidget webAppBar() {
    return AppBar(
      backgroundColor:  Color.fromARGB	(255,		0,0,53),

      title: Row(
        children: [
          Image(
                image: AssetImage('assets/Screenshot__44_-removebg-preview.png'),
                 width: 15.w,
            height: 10.h,
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 1.w),
                  child: ToggleButtons(
                    isSelected: isSelcted,
                    onPressed: (int index) {},
                    // selectedColor: Colors.blue,
                    color: Colors.white,
                    fillColor: Colors.transparent,
                    renderBorder: false,
                    textStyle: TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 13)),
                    children: List.generate(labels.length, (index) {
                      return Container(
                        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color:
                              isSelcted[index] ? Colors.blue : Colors.transparent,
                            ),
                          ),
                        ),
                        child: Text(
                          labels[index],
                          style: TextStyle(
                              fontWeight: isSelcted[index]
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                      );
                    }),
                  ),
                ),
                DropdownButton(
                  iconEnabledColor: Colors.white,
                  underline: const SizedBox(),
                  items: <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                    value: '',
                    child: Text(''),
                    alignment: Alignment.center,
                  )
                ], onChanged: (value) {

                },)

              ],
            ),
          ),
          TextButton(
            onPressed: (){},
            style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              elevation: WidgetStateProperty.all(0),
              backgroundColor: WidgetStateProperty.all(Colors.greenAccent.shade400)
            ),
            child: Text(
              'APPLY NOW',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),
            ),
          )

        ],
      ),
      centerTitle: true,

      // backgroundColor: Colors.grey.shade100,
      elevation: 0,
    );
  }
}
