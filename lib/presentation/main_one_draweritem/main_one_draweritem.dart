import 'package:bakground_removel_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MainOneDraweritem extends StatelessWidget {
  const MainOneDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 106.h),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillIndigo,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse478,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                    margin: EdgeInsets.only(top: 91.v),
                  ),
                  Container(
                    height: 31.v,
                    width: 113.h,
                    margin: EdgeInsets.only(
                      left: 9.h,
                      top: 96.v,
                      bottom: 3.v,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Rizwan Ahmad",
                            style: CustomTextStyles.titleSmallPrimary,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "rizwanahmad210@gmail.com",
                            style: CustomTextStyles.bodySmallNunitoPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 36.v),
            SizedBox(
              height: 293.v,
              width: 255.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 119.h,
                      margin: EdgeInsets.only(right: 52.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Home\n",
                              style: CustomTextStyles.titleSmallff35339a,
                            ),
                            TextSpan(
                              text:
                                  "Subscription\nSupport\nPrivacy Policy\nTerms & condition\nSign Out ",
                              style:
                                  CustomTextStyles.titleSmallff727272.copyWith(
                                height: 3.50,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 240.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 15.v,
                      ),
                      decoration: AppDecoration.fillIndigo.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderLR38,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 6.adaptSize,
                            width: 6.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 7.v),
                            decoration: BoxDecoration(
                              color: appTheme.indigo70001,
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgHome,
                            height: 20.v,
                            width: 21.h,
                            margin: EdgeInsets.only(left: 16.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 41.h,
                        right: 188.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsUp,
                            height: 19.v,
                            width: 25.h,
                          ),
                          SizedBox(height: 31.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          SizedBox(height: 31.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgCheckmark,
                            height: 20.v,
                            width: 18.h,
                          ),
                          SizedBox(height: 30.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup35397,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          SizedBox(height: 30.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsUpGray600,
                            height: 19.v,
                            width: 20.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 36.v),
          ],
        ),
      ),
    );
  }
}
