import 'package:bank_deisgn_flutterwebsite/core/utils/custom_fontsize.dart';
import 'package:flutter/material.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('abdalldg',style: TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 16)),),
          Text('abdadgl[sdg,sgsfgfs',style: TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 16))),
          Text('abdalldgsdghsdhshsfhsfh',style: TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 16))),
          Text('abdalldgasdfdsfgs',style: TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 16))),
          Text('abdalldgdsgsfgsfgfdhfdhdf',style: TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 16))),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 17,
              ),
              children: [
                TextSpan(
                  text: 'Tap',
                ),
                WidgetSpan(
                  child: Icon(Icons.add),
                ),
                TextSpan(
                  text: 'on the right hand corner to start a new chat.',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
