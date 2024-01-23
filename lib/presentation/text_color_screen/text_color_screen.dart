import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:bakground_removel_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class TextColorScreen extends StatelessWidget {
  const TextColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 9.v),
                  _buildTen(context),
                  _buildView(context),
                  SizedBox(height: 16.v),
                  _buildDone(context),
                  SizedBox(height: 16.v),
                  _buildMainColorx(context),
                  SizedBox(height: 9.v),
                  _buildMainColorx1(context),
                  SizedBox(height: 26.v),
                  SizedBox(width: 129.h, child: Divider())
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
  Widget _buildTen(BuildContext context) {
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
  Widget _buildView(BuildContext context) {
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
        padding: EdgeInsets.only(left: 29.h, right: 15.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  child: Text("Select Text Colour",
                      style: CustomTextStyles.titleSmallBluegray90001)),
              CustomOutlinedButton(width: 61.h, text: "Done")
            ]));
  }

  /// Section Widget
  Widget _buildMainColorx(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 81.v,
            width: 373.h,
            child: Stack(alignment: Alignment.centerLeft, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMainColor1750x460,
                  height: 79.v,
                  width: 182.h,
                  alignment: Alignment.centerRight),
              CustomImageView(
                  imagePath: ImageConstant.imgMainColor1750x46081x201,
                  height: 81.v,
                  width: 201.h,
                  alignment: Alignment.centerLeft)
            ])));
  }

  /// Section Widget
  Widget _buildMainColorx1(BuildContext context) {
    return SizedBox(
        height: 79.v,
        width: 379.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMainColor1750x46079x214,
              height: 79.v,
              width: 214.h,
              alignment: Alignment.centerLeft),
          CustomImageView(
              imagePath: ImageConstant.imgMainColor1750x46079x176,
              height: 79.v,
              width: 176.h,
              alignment: Alignment.centerRight)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
