import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/presentation/effects_page/effects_page.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ImageBoothScreen extends StatelessWidget {
  ImageBoothScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 19.v),
                child: Column(children: [
                  _buildImageBoothStack(context),
                  _buildImageBoothStackView(context),
                  SizedBox(height: 72.v),
                  Padding(
                      padding: EdgeInsets.only(left: 27.h, right: 21.h),
                      child: Slider(
                          value: 0.0,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (value) {})),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 24.h, right: 8.h),
                child: _buildBottomBar(context))));
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
        title: AppbarTitle(text: "Edit Picture"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCheckmarkPurpleA40002,
              margin: EdgeInsets.fromLTRB(31.h, 18.v, 31.h, 17.v))
        ]);
  }

  /// Section Widget
  Widget _buildImageBoothStack(BuildContext context) {
    return SizedBox(
        height: 393.adaptSize,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle23,
              height: 393.adaptSize,
              width: 393.adaptSize,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 39.v,
                  width: 160.h,
                  margin: EdgeInsets.only(top: 6.v, right: 12.h),
                  child: Stack(alignment: Alignment.topRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            margin: EdgeInsets.only(right: 1.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.h, vertical: 4.v),
                            decoration: AppDecoration.gradientPurpleAToIndigo
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Text("AI Remove Background",
                                      style: CustomTextStyles.labelLargePrimary)
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgStar11,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        alignment: Alignment.topRight)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildImageBoothStackView(BuildContext context) {
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Crop:
        return AppRoutes.effectsPage;
      case BottomBarEnum.Collage:
        return "/";
      case BottomBarEnum.Filters:
        return "/";
      case BottomBarEnum.Effect:
        return "/";
      case BottomBarEnum.Text:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.effectsPage:
        return EffectsPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
