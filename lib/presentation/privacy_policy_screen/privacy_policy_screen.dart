import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 17.v,
          ),
          child: Column(
            children: [
              _buildUserRow(context),
              SizedBox(height: 26.v),
              Container(
                width: 345.h,
                margin: EdgeInsets.only(
                  left: 5.h,
                  right: 4.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "1. Information Collection:",
                        style: CustomTextStyles.titleSmallff3c3c3c,
                      ),
                      TextSpan(
                        text:
                            " We may collect personal information that you voluntarily provide, such as your name and email address when you create an account.\r\n\r\n",
                        style: CustomTextStyles.titleSmallff9c9c9c,
                      ),
                      TextSpan(
                        text: "2. Use of Information:",
                        style: CustomTextStyles.titleSmallff3c3c3c,
                      ),
                      TextSpan(
                        text:
                            " We use your personal information to provide you with access to the App's features, improve your user experience, and communicate important updates.\r\n\r\n",
                        style: CustomTextStyles.titleSmallff9c9c9c,
                      ),
                      TextSpan(
                        text: "3. User-Generated Content:",
                        style: CustomTextStyles.titleSmallff3c3c3c,
                      ),
                      TextSpan(
                        text:
                            " Any reviews, comments, or other content you post on the App may be publicly displayed, so please consider the information you share.\r\n\r\n",
                        style: CustomTextStyles.titleSmallff9c9c9c,
                      ),
                      TextSpan(
                        text: "4. Data Security:",
                        style: CustomTextStyles.titleSmallff3c3c3c,
                      ),
                      TextSpan(
                        text:
                            " We employ industry-standard security measures to protect your information from unauthorized access or disclosure.\r\n\r\n",
                        style: CustomTextStyles.titleSmallff9c9c9c,
                      ),
                      TextSpan(
                        text: "5. Third-Party Links:",
                        style: CustomTextStyles.titleSmallff3c3c3c,
                      ),
                      TextSpan(
                        text:
                            " The App may include links to third-party websites or services, but we are not responsible for their privacy practices. Please review their privacy policies before using those services.\r\r\n\r\n",
                        style: CustomTextStyles.titleSmallff9c9c9c,
                      ),
                      TextSpan(
                        text:
                            "6. Changes to the Privacy Policy: We may update this privacy policy from time to time, and any significant changes will be communicated to you.\r\n\r\nWhile this summary provides an overview, we encourage you to read the full Privacy Policy to understand our practices in more detail.",
                        style: CustomTextStyles.titleSmallff3c3c3c,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 8.v),
            ],
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
        text: "Privacy Policy",
      ),
    );
  }

  /// Section Widget
  Widget _buildUserRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: CustomImageView(
              imagePath: ImageConstant.imgUserPurpleA40002,
              height: 90.v,
              width: 78.h,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 4.v,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 260.h,
              margin: EdgeInsets.only(left: 12.h),
              child: Text(
                "Our App is committed to protecting your privacy and safeguarding your personal information. This short privacy policy provides a concise overview of how we collect, use, and protect your data.",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                style: CustomTextStyles.titleSmallIndigo70001SemiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
