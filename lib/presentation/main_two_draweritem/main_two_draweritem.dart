import 'package:bakground_removel_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MainTwoDraweritem extends StatelessWidget {
  const MainTwoDraweritem({Key? key})
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
              width: 286.h,
              margin: EdgeInsets.only(right: 106.h),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillIndigo,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 121.v),
                  Text(
                    "Login / Create",
                    style: CustomTextStyles.titleMediumPrimaryMedium16,
                  ),
                ],
              ),
            ),
            SizedBox(height: 36.v),
            SizedBox(
              height: 242.v,
              width: 255.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 119.h,
                      margin: EdgeInsets.only(
                        right: 52.h,
                        bottom: 2.v,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Home\n",
                              style: CustomTextStyles.titleSmallff35339a,
                            ),
                            TextSpan(
                              text: "Subscription\nSupport\n",
                              style:
                                  CustomTextStyles.titleSmallff727272.copyWith(
                                height: 3.50,
                              ),
                            ),
                            TextSpan(
                              text: "Privacy Policy\n",
                              style: CustomTextStyles.bodyMediumff727272_1,
                            ),
                            TextSpan(
                              text: "Terms & condition",
                              style: CustomTextStyles.titleSmallff727272,
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
                      margin: EdgeInsets.only(bottom: 189.v),
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
                          SizedBox(height: 31.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup35397,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
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
