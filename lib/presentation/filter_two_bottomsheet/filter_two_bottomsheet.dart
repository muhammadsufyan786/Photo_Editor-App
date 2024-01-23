import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FilterTwoBottomsheet extends StatelessWidget {
  const FilterTwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder26,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 129.h,
            child: Divider(),
          ),
          SizedBox(height: 26.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 21.h),
            padding: EdgeInsets.symmetric(
              horizontal: 45.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                SizedBox(
                  width: 252.h,
                  child: Text(
                    "You have reached the maximum limit to download images without registration!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallRed50001,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 29.v),
          SizedBox(
            width: 240.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Please ",
                    style: CustomTextStyles.titleSmallff000000SemiBold,
                  ),
                  TextSpan(
                    text: "Sign In or Sign Up",
                    style: CustomTextStyles.titleSmallff000000,
                  ),
                  TextSpan(
                    text: " to remove background & Download images",
                    style: CustomTextStyles.titleSmallff000000SemiBold,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 25.v),
          CustomElevatedButton(
            text: "Sign In / Sign Up",
            margin: EdgeInsets.symmetric(horizontal: 35.h),
            buttonStyle: CustomButtonStyles.fillIndigo,
            buttonTextStyle: CustomTextStyles.titleMediumPrimaryMedium16_1,
          ),
          SizedBox(height: 29.v),
          Row(
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
          ),
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
          SizedBox(height: 46.v),
        ],
      ),
    );
  }
}
