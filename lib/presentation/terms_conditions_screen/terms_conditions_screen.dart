import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 26.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                children: [
                  _buildTermsConditions(context),
                  SizedBox(height: 37.v),
                  Container(
                    width: 346.h,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      right: 3.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Welcome to PICSTONIC, a photo editing application provided by PICSTONIC Technologies. By using PICSTONIC, you agree to the following terms and conditions:\r\n\r\n",
                            style:
                                CustomTextStyles.titleSmallff727272_1.copyWith(
                              height: 1.20,
                            ),
                          ),
                          TextSpan(
                            text: "1. Acceptance of Terms : ",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text:
                                "By downloading, installing, or using PICSTONIC, you acknowledge and agree to abide by these Terms and Conditions.\r\n",
                            style: CustomTextStyles.bodyMediumff727272,
                          ),
                          TextSpan(
                            text: "\r\n",
                            style: CustomTextStyles.titleSmallff727272_1,
                          ),
                          TextSpan(
                            text: "2. Use of the Application : ",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text:
                                "You may use PICSTONIC for personal, non-commercial use only. You must not use the application for any illegal or unethical activities.\r\n",
                            style: CustomTextStyles.bodyMediumff727272,
                          ),
                          TextSpan(
                            text: "\r\n",
                            style: CustomTextStyles.titleSmallff727272_1,
                          ),
                          TextSpan(
                            text: "3. Intellectual Property :",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text:
                                "All intellectual property rights related to PICSTONIC, including copyrights and trademarks, are owned by PICSTONIC Technologies. You may not reproduce, distribute, or modify any content from the application without our prior written consent.\r\n",
                            style: CustomTextStyles.bodyMediumff727272,
                          ),
                          TextSpan(
                            text: "\r\n",
                            style: CustomTextStyles.titleSmallff727272_1,
                          ),
                          TextSpan(
                            text: "4. Privacy Policy :",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text:
                                "Your use of PICSTONIC is subject to our Privacy Policy. Please review the Privacy Policy to understand our data collection and usage practices.\r\n\r\n",
                            style:
                                CustomTextStyles.titleSmallff727272_1.copyWith(
                              height: 1.20,
                            ),
                          ),
                          TextSpan(
                            text: "5. User Content",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: ":",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text:
                                "Any content you create or modify using PICSTONIC is considered \"User Content.\" You retain ownership of your User Content. By using the application, you grant us a license to use, modify, reproduce, and distribute your User Content for the purpose of providing and improving PICSTONIC.\r\n\r\n",
                            style:
                                CustomTextStyles.titleSmallff727272_1.copyWith(
                              height: 1.20,
                            ),
                          ),
                          TextSpan(
                            text: "6. Prohibited Actions :",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text:
                                "You agree not to use PICSTONIC for any unlawful or unauthorized purposes. Do not violate any applicable laws, regulations, or third-party rights while using the application.\r\n\r\n",
                            style:
                                CustomTextStyles.titleSmallff727272_1.copyWith(
                              height: 1.20,
                            ),
                          ),
                          TextSpan(
                            text: "7. Updates and Changes",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: ":",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text:
                                "We may release updates, modifications, or new versions of PICSTONIC. You agree to install updates as needed for continued use of the application.\r\n\r\n",
                            style:
                                CustomTextStyles.titleSmallff727272_1.copyWith(
                              height: 1.20,
                            ),
                          ),
                          TextSpan(
                            text: "8. Termination",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: ":",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text:
                                "We reserve the right to suspend, terminate, or restrict your access to PICSTONIC at any time for any reason, without prior notice or liability.\r\n\r\n",
                            style:
                                CustomTextStyles.titleSmallff727272_1.copyWith(
                              height: 1.20,
                            ),
                          ),
                          TextSpan(
                            text: "9. Limitation of Liability",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: ":",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text:
                                "We are not liable for any damages arising from or in connection with the use of PICSTONIC. Use the application at your own risk.\r\n\r\n",
                            style:
                                CustomTextStyles.titleSmallff727272_1.copyWith(
                              height: 1.20,
                            ),
                          ),
                          TextSpan(
                            text: "10. Indemnification",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: ":",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text:
                                "You agree to indemnify and hold PICSTONIC Technologies harmless from any claims, damages, losses, liabilities, and expenses arising from your use of PICSTONIC or your violation of these Terms.\r\n\r\n",
                            style:
                                CustomTextStyles.titleSmallff727272_1.copyWith(
                              height: 1.20,
                            ),
                          ),
                          TextSpan(
                            text: "11. Governing Law",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: ":",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text:
                                "These Terms are governed by the laws of the jurisdiction in which PICSTONIC Technologies operates.\r\n",
                            style: CustomTextStyles.titleSmallff727272_1,
                          ),
                          TextSpan(
                            text: "\r\n12. Contact Us",
                            style: theme.textTheme.titleSmall!.copyWith(
                              height: 1.20,
                            ),
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: ":",
                            style: CustomTextStyles.titleSmallff727272_1,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text:
                                "If you have any questions or concerns regarding these Terms or PICSTONIC, please contact us.\r\n\r\nThank you for using PICSTONIC!",
                            style:
                                CustomTextStyles.titleSmallff727272_1.copyWith(
                              height: 1.20,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Terms & Conditions",
      ),
    );
  }

  /// Section Widget
  Widget _buildTermsConditions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(
          opacity: 0.5,
          child: CustomImageView(
            imagePath: ImageConstant.imgUserPurpleA4000277x78,
            height: 77.v,
            width: 78.h,
          ),
        ),
        Expanded(
          child: Container(
            width: 260.h,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 10.v,
              bottom: 8.v,
            ),
            child: Text(
              "Please read these terms and conditions carefully. By using the App, you agree to be bound by these terms and conditions.\r ",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              style: CustomTextStyles.titleSmallIndigo70001,
            ),
          ),
        ),
      ],
    );
  }
}
