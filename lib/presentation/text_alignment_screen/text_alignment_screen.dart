import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:bakground_removel_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class TextAlignmentScreen extends StatelessWidget {
  const TextAlignmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildTelevision(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 9.v),
                  _buildSixteen(context),
                  _buildSeventyTwo(context),
                  SizedBox(height: 16.v),
                  _buildDone(context),
                  SizedBox(height: 61.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 51.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Column(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgTelevision,
                                      height: 22.adaptSize,
                                      width: 22.adaptSize),
                                  SizedBox(height: 9.v),
                                  Text("Left",
                                      style:
                                          CustomTextStyles.labelLargeBlack900)
                                ])),
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Column(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgTelevision,
                                      height: 22.adaptSize,
                                      width: 22.adaptSize),
                                  SizedBox(height: 9.v),
                                  Text("Center",
                                      style:
                                          CustomTextStyles.labelLargeBlack900)
                                ])),
                            Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgTelevision,
                                  height: 22.adaptSize,
                                  width: 22.adaptSize),
                              SizedBox(height: 10.v),
                              Text("Right",
                                  style: CustomTextStyles.labelLargeBlack900)
                            ])
                          ])),
                  Spacer(),
                  SizedBox(width: 129.h, child: Divider())
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildTelevision(BuildContext context) {
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
  Widget _buildSixteen(BuildContext context) {
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
  Widget _buildSeventyTwo(BuildContext context) {
    return SizedBox(
        height: 50.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 50.v,
                  width: double.maxFinite,
                  decoration:
                      BoxDecoration(color: appTheme.gray10002, boxShadow: [
                    BoxShadow(
                        color: appTheme.black900.withOpacity(0.15),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(0, 0))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgVectorGray600,
              height: 20.v,
              width: 22.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 86.h)),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 85.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            height: 50.v,
                            width: 1.h,
                            decoration:
                                BoxDecoration(color: appTheme.gray30001)),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorGray60020x22,
                            height: 20.v,
                            width: 22.h,
                            margin: EdgeInsets.only(
                                left: 87.h, top: 15.v, bottom: 15.v))
                      ])))
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
              child: Text("Select Text Alignment",
                  style: CustomTextStyles.titleSmallBluegray90001)),
          CustomOutlinedButton(width: 61.h, text: "Done")
        ]));
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
