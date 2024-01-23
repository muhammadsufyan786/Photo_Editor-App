import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:bakground_removel_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class BgRemovedScreen extends StatelessWidget {
  const BgRemovedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 17.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildWidgetStack(context),
                      SizedBox(height: 43.v),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text("Add Background",
                              style: theme.textTheme.labelLarge)),
                      SizedBox(height: 14.v),
                      _buildRowFiftyFive(context),
                      SizedBox(height: 63.v),
                      CustomElevatedButton(
                          height: 45.v,
                          text: "Done",
                          margin: EdgeInsets.symmetric(horizontal: 23.h),
                          buttonStyle: CustomButtonStyles.fillIndigoTL13,
                          buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 19.v),
            onTap: () {
              onTapClose(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Remove Background"));
  }

  /// Section Widget
  Widget _buildWidgetStack(BuildContext context) {
    return SizedBox(
        height: 409.v,
        width: 392.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 393.v,
                  width: 392.h,
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage3,
                        height: 393.v,
                        width: 392.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle23393x196,
                        height: 393.v,
                        width: 196.h,
                        alignment: Alignment.centerLeft)
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgGroup35314,
              height: 409.v,
              width: 26.h,
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildRowFiftyFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.h, right: 34.h),
        child: Row(children: [
          CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(15.h),
              decoration: IconButtonStyleHelper.outlineGray,
              child: CustomImageView(imagePath: ImageConstant.imgContrast)),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10.h),
              child: IntrinsicWidth(
                  child: Container(
                      decoration: AppDecoration.fillIndigo.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgCamera,
                                height: 25.v,
                                width: 31.h,
                                margin: EdgeInsets.symmetric(vertical: 17.v)),
                            Container(
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                                margin: EdgeInsets.only(left: 234.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.h),
                                    gradient: LinearGradient(
                                        begin: Alignment(0, 0.5),
                                        end: Alignment(1, 0.5),
                                        colors: [
                                          appTheme.pink300,
                                          appTheme.redA200
                                        ])))
                          ])))),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: CustomIconButton(
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.outlineGrayTL10,
                  child: CustomImageView(imagePath: ImageConstant.imgGroup11))),
          Container(
              height: 60.adaptSize,
              width: 60.adaptSize,
              margin: EdgeInsets.only(left: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.h),
                  gradient: LinearGradient(
                      begin: Alignment(0, 0.5),
                      end: Alignment(1, 0.5),
                      colors: [
                        theme.colorScheme.errorContainer,
                        appTheme.lime100
                      ]))),
          Container(
              height: 60.adaptSize,
              width: 60.adaptSize,
              margin: EdgeInsets.only(left: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.h),
                  gradient: LinearGradient(
                      begin: Alignment(0, 0.5),
                      end: Alignment(1, 0.5),
                      colors: [appTheme.red300, appTheme.deepOrangeA100])))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
