import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key})
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
            horizontal: 15.h,
            vertical: 9.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle23363x363,
                height: 363.adaptSize,
                width: 363.adaptSize,
                radius: BorderRadius.circular(
                  21.h,
                ),
              ),
              SizedBox(height: 32.v),
              _buildFortyEight(context),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                height: 45.v,
                text: "Subscribe",
                margin: EdgeInsets.symmetric(horizontal: 31.h),
                buttonStyle: CustomButtonStyles.fillIndigo,
                buttonTextStyle: CustomTextStyles.titleMediumPrimaryMedium16,
              ),
              SizedBox(height: 26.v),
              Text(
                "Download Low Quality ( 10 left )",
                style: CustomTextStyles.titleSmallGray600,
              ),
              SizedBox(
                width: 207.h,
                child: Divider(
                  color: appTheme.gray600,
                ),
              ),
              SizedBox(height: 53.v),
              SizedBox(
                width: 129.h,
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Save Image",
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 12.h),
              padding: EdgeInsets.all(9.h),
              decoration: AppDecoration.outlineIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkIndigo70001,
                    height: 21.adaptSize,
                    width: 21.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 3.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: " 2",
                          style: CustomTextStyles.titleMediumff35339a,
                        ),
                        TextSpan(
                          text: " / month",
                          style: CustomTextStyles.titleMediumff35339aMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 15.v),
                  SizedBox(
                    width: 104.h,
                    child: Text(
                      "Get up to 20 HD images Download",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelLargeGray600,
                    ),
                  ),
                  SizedBox(height: 11.v),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 12.h),
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 21.v,
              ),
              decoration: AppDecoration.outlineGray600.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 13.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "10",
                          style: CustomTextStyles.titleMediumff35339a,
                        ),
                        TextSpan(
                          text: " / year",
                          style: CustomTextStyles.titleMediumff35339aMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 15.v),
                  SizedBox(
                    width: 104.h,
                    child: Text(
                      "Get unlimited HD images Download",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelLargeGray600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
