import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FilterOneScreen extends StatelessWidget {
  const FilterOneScreen({Key? key})
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
            horizontal: 3.h,
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
              SizedBox(height: 40.v),
              Text(
                "Login To Download Image",
                style: CustomTextStyles.titleSmallBluegray90001_1,
              ),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                text: "Sign In / Sign Up",
                margin: EdgeInsets.symmetric(horizontal: 35.h),
                buttonStyle: CustomButtonStyles.fillIndigo,
                buttonTextStyle: CustomTextStyles.titleMediumPrimaryMedium16_1,
              ),
              SizedBox(height: 29.v),
              _buildLineRow(context),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                height: 45.v,
                text: "Continue with Google",
                margin: EdgeInsets.symmetric(horizontal: 42.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 15.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineBlackTL10,
                buttonTextStyle: CustomTextStyles.titleMediumBlack900Medium,
              ),
              SizedBox(height: 93.v),
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
  Widget _buildLineRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 5.v,
          ),
          child: SizedBox(
            width: 161.h,
            child: Divider(),
          ),
        ),
        Text(
          "Or With",
          style: CustomTextStyles.labelLargeSFProTextPrimaryContainer,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 5.v,
          ),
          child: SizedBox(
            width: 163.h,
            child: Divider(),
          ),
        ),
      ],
    );
  }
}
