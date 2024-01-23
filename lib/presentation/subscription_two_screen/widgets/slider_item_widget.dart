import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(left: 265.h),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 152.v,
              width: 262.h,
              padding: EdgeInsets.symmetric(vertical: 18.v),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL11,
              ),
              child: Opacity(
                opacity: 0.7,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrow1,
                  height: 115.adaptSize,
                  width: 115.adaptSize,
                  alignment: Alignment.centerRight,
                ),
              ),
            ),
            SizedBox(height: 37.v),
            Text(
              " 2",
              style: theme.textTheme.displayLarge,
            ),
            Text(
              "/ month",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 40.v),
            Container(
              width: 142.h,
              margin: EdgeInsets.only(
                left: 60.h,
                right: 61.h,
              ),
              child: Text(
                "Get up to 20 HD images Download",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleMediumPrimaryMedium17,
              ),
            ),
            SizedBox(height: 37.v),
            CustomElevatedButton(
              height: 40.v,
              text: "Subscribe Now",
              margin: EdgeInsets.symmetric(horizontal: 15.h),
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.titleSmallIndigoA200,
            ),
            SizedBox(height: 20.v),
          ],
        ),
      ),
    );
  }
}
