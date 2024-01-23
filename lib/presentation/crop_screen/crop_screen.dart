import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/presentation/effects_page/effects_page.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CropScreen extends StatelessWidget {
  CropScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(children: [
                  _buildTwentyFour(context),
                  _buildView(context),
                  SizedBox(height: 16.v),
                  _buildThumbsUp1(context),
                  SizedBox(height: 9.v),
                  _buildZero(context)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.only(left: 30.h, top: 17.v, bottom: 18.v),
            onTap: () {
              onTapClose(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Crop / Rotate"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCheckmarkPurpleA40002,
              margin: EdgeInsets.fromLTRB(31.h, 17.v, 31.h, 18.v))
        ]);
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return SizedBox(
        height: 393.adaptSize,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle23,
              height: 393.adaptSize,
              width: 393.adaptSize,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgGroup35348,
              height: 363.adaptSize,
              width: 363.adaptSize,
              alignment: Alignment.center)
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
  Widget _buildThumbsUp(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 4.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Flip Image", style: theme.textTheme.labelLarge),
          SizedBox(height: 3.v),
          Container(
              width: 109.h,
              decoration: AppDecoration.outlineGray30001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder9),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpGray60018x18,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 11.v)),
                    SizedBox(
                        height: 39.v,
                        child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.gray30001)),
                    CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 11.v))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildThumbsUp1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 48.v),
                  child:
                      Text("Rotate Image", style: theme.textTheme.labelLarge)),
              _buildThumbsUp(context)
            ]));
  }

  /// Section Widget
  Widget _buildZero(BuildContext context) {
    return SizedBox(
        height: 42.v,
        width: 353.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Text("0", style: CustomTextStyles.labelLargeBlack900)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text("-90", style: CustomTextStyles.labelLargeBlack900)),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child:
                      Text("+90", style: CustomTextStyles.labelLargeBlack900))),
          Slider(value: 0.0, min: 0.0, max: 100.0, onChanged: (value) {})
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
