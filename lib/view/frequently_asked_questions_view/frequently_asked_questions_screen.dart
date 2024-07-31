import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank_deisgn_flutterwebsite/view/frequently_asked_questions_view/widget/frequently_asked_questions.dart';
import 'package:bank_deisgn_flutterwebsite/view/frequently_asked_questions_view/widget/frequently_questions_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/is_responsive.dart';
import 'widget/frequently_asked_questions_header.dart';

class FrequentlyAskedQuestionsScreen extends StatelessWidget {
  const FrequentlyAskedQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: (5.h)),
      child: Column(
        children: [
          FrequentlyAskedQuestionsHeader(
            title: 'Frequently Asked ',
            underlineTitleText: 'Questions',
          ),
          SizedBox(
            height: 2.h,
          ),
          FrequentlyQuestionsToggleButton(),
          SizedBox(
            height: 5.h,
          ),
          GridView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: IsResponsive.isWebScreen(context) ? 2 : 1,
                  crossAxisSpacing: 10,
                mainAxisSpacing: 2.h,
                 ),
              children: [
                Column(
                  children: [
                    FrequentlyAskedQuestions(
                        containerColor: Colors.white,
                        icon: Icons.arrow_back,
                        title: 'What Is A Small Business Loan?',
                        subTitle:
                            'Small Business loans are a category of personal loans and financial products a lender might provide to a small business.',),
                    SizedBox(
                      height: 3.h,
                    ),
                    FrequentlyAskedQuestions(
                        containerColor: Colors.grey.shade200,
                        icon: Icons.subdirectory_arrow_left,
                        title:
                            'What is The Difference Between Secured and Unsecured Loans?',
                        subTitle: ''),
                    SizedBox(
                      height: 3.h,
                    ),
                    FrequentlyAskedQuestions(
                        containerColor: Colors.grey.shade200,
                        icon: Icons.subdirectory_arrow_left,
                        title: 'How Do Business Loans Work?',
                        subTitle: ''),
                    SizedBox(
                      height: 3.h,
                    ),
                    FrequentlyAskedQuestions(
                        containerColor: Colors.grey.shade200,
                        icon: Icons.subdirectory_arrow_left,
                        title: 'What Types of Business Loans Are Available?',
                        subTitle: ''),
                  ],
                ),
                Column(
                  children: [
                    FrequentlyAskedQuestions(
                      containerColor: Colors.white,
                      icon: Icons.arrow_back,
                      title: 'Can I Get A Loan With A Bad Credit?',
                      subTitle:
                          'it is possible to get certain types of business financing with a lower credit score. some business cash advance lenders',
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    FrequentlyAskedQuestions(
                        containerColor: Colors.grey.shade200,
                        icon: Icons.subdirectory_arrow_left,
                        title: 'How fast can I recieve my funds?',
                        subTitle: ''),
                    SizedBox(
                      height: 3.h,
                    ),
                    FrequentlyAskedQuestions(
                        containerColor: Colors.grey.shade200,
                        icon: Icons.subdirectory_arrow_left,
                        title: 'What is a business line of credit ?',
                        subTitle: ''),
                    SizedBox(
                      height: 3.h,
                    ),
                    FrequentlyAskedQuestions(containerColor: Colors.grey.shade200, icon: Icons.subdirectory_arrow_left, title:                                   'What benefits does are eligible for a line of credit',
                        subTitle: ''),

                  ],
                ),
              ]),
        ],
      ),
    );
  }
}
