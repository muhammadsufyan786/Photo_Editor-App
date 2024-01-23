import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TextWithKeyboardScreen extends StatelessWidget {
  const TextWithKeyboardScreen({Key? key}) : super(key: key);

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
                  _buildSeventeen(context),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup35327,
                      height: 50.v,
                      width: 393.h),
                  SizedBox(height: 50.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 41.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Column(children: [
                                  Container(
                                      height: 40.v,
                                      width: 60.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.h, vertical: 7.v),
                                      decoration: AppDecoration.fillGray10001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder6),
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCloseIndigo70001,
                                          height: 26.v,
                                          width: 29.h,
                                          alignment: Alignment.center)),
                                  SizedBox(height: 6.v),
                                  Text("Colour",
                                      style: theme.textTheme.labelLarge)
                                ])),
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Column(children: [
                                  Container(
                                      height: 40.v,
                                      width: 60.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 17.h, vertical: 10.v),
                                      decoration: AppDecoration.fillGray10001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder6),
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgUserIndigo70001,
                                          height: 18.v,
                                          width: 26.h,
                                          alignment: Alignment.center)),
                                  SizedBox(height: 6.v),
                                  Text("Font",
                                      style: theme.textTheme.labelLarge)
                                ])),
                            Column(children: [
                              Container(
                                  height: 40.v,
                                  width: 60.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 19.h, vertical: 10.v),
                                  decoration: AppDecoration.fillGray10001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder6),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgTelevision,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      alignment: Alignment.center)),
                              SizedBox(height: 7.v),
                              Text("Align", style: theme.textTheme.labelLarge)
                            ])
                          ])),
                  SizedBox(height: 34.v),
                  _buildView(context),
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
  Widget _buildSeventeen(BuildContext context) {
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
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 8.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h))),
              Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray1007f,
                      borderRadius: BorderRadius.circular(2.h)))
            ]),
            SizedBox(height: 20.v),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgNavCrop,
                            height: 26.adaptSize,
                            width: 26.adaptSize),
                        SizedBox(height: 12.v),
                        Text("Crop", style: theme.textTheme.labelLarge)
                      ]),
                      Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgNavCollage,
                            height: 26.adaptSize,
                            width: 26.adaptSize),
                        SizedBox(height: 12.v),
                        Text("Collage", style: theme.textTheme.labelLarge)
                      ]),
                      Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgNavFilters,
                            height: 26.v,
                            width: 27.h),
                        SizedBox(height: 11.v),
                        Text("Filters", style: theme.textTheme.labelLarge)
                      ]),
                      Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgNavEffect,
                            height: 26.adaptSize,
                            width: 26.adaptSize),
                        SizedBox(height: 11.v),
                        Text("Effect", style: theme.textTheme.labelLarge)
                      ]),
                      Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgNavText26x26,
                            height: 26.adaptSize,
                            width: 26.adaptSize),
                        SizedBox(height: 11.v),
                        Text("Text",
                            style: CustomTextStyles.labelLargePurpleA40003)
                      ])
                    ]))
          ])),
          Opacity(
              opacity: 0.5,
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 12.v,
                  width: 7.h,
                  margin: EdgeInsets.only(left: 8.h, top: 42.v, bottom: 26.v)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
