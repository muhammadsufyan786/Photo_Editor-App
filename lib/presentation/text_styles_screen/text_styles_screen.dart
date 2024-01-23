import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:bakground_removel_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class TextStylesScreen extends StatelessWidget {
  const TextStylesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildHelloBeautiful(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 9.v),
                  _buildThirteen(context),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup35327,
                      height: 50.v,
                      width: 393.h),
                  SizedBox(height: 16.v),
                  _buildDone(context),
                  SizedBox(height: 19.v),
                  Opacity(
                      opacity: 0.5,
                      child: Text("Roboto",
                          style: CustomTextStyles.bodyMediumBlack900)),
                  SizedBox(height: 12.v),
                  Text("Montserrat",
                      style: CustomTextStyles.bodyMediumMontserratBlack900),
                  SizedBox(height: 10.v),
                  Divider(indent: 24.h, endIndent: 24.h),
                  SizedBox(height: 4.v),
                  Text("Nunito",
                      style:
                          CustomTextStyles.headlineMediumNunitoBlack900Regular),
                  SizedBox(height: 8.v),
                  Divider(indent: 24.h, endIndent: 24.h),
                  SizedBox(height: 10.v),
                  Text("Poppins",
                      style: CustomTextStyles.bodyMediumPoppinsBlack900),
                  SizedBox(height: 8.v),
                  Opacity(
                      opacity: 0.5,
                      child: Text("Gotham",
                          style: CustomTextStyles.bodyMediumGothamBlack900)),
                  SizedBox(height: 23.v),
                  SizedBox(width: 129.h, child: Divider())
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildHelloBeautiful(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.only(left: 30.h, top: 18.v, bottom: 17.v),
            onTap: () {
              onTapClose(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Text"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCheckmarkPurpleA40002,
              margin: EdgeInsets.fromLTRB(31.h, 18.v, 31.h, 17.v))
        ]);
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return SizedBox(
        height: 393.adaptSize,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle23,
              height: 393.adaptSize,
              width: 393.adaptSize,
              alignment: Alignment.center),
          CustomElevatedButton(
              width: 223.h,
              text: "Hello Beautiful |",
              margin: EdgeInsets.only(bottom: 41.v),
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Section Widget
  Widget _buildDone(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 15.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: Text("Select Text Style",
                  style: CustomTextStyles.titleSmallBluegray90001)),
          CustomOutlinedButton(width: 61.h, text: "Done")
        ]));
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
