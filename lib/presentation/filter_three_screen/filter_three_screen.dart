import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/presentation/effects_page/effects_page.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FilterThreeScreen extends StatelessWidget {
  FilterThreeScreen({Key? key}) : super(key: key);

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
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle23,
                      height: 393.adaptSize,
                      width: 393.adaptSize),
                  _buildView(context),
                  SizedBox(height: 41.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 158.h),
                          child: Text("02",
                              style: CustomTextStyles.labelLargeBlack900))),
                  SizedBox(height: 8.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Slider(
                          value: 0.0,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (value) {})),
                  SizedBox(height: 12.v),
                  _buildTen(context),
                  SizedBox(height: 34.v),
                  _buildView1(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 24.h),
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
        title: AppbarTitle(text: "Filters"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCheckmarkPurpleA40002,
              margin: EdgeInsets.fromLTRB(31.h, 18.v, 31.h, 17.v))
        ]);
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
  Widget _buildTen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("-10", style: CustomTextStyles.labelLargeBlack900),
          Text("0", style: CustomTextStyles.labelLargeBlack900),
          Text("+10", style: CustomTextStyles.labelLargeBlack900)
        ]));
  }

  /// Section Widget
  Widget _buildView1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h))),
          Container(
              height: 5.adaptSize,
              width: 5.adaptSize,
              margin: EdgeInsets.only(left: 15.h),
              decoration: BoxDecoration(
                  color: appTheme.blueGray1007f,
                  borderRadius: BorderRadius.circular(2.h)))
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
