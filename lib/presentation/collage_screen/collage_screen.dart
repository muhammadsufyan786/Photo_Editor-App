import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/presentation/effects_page/effects_page.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_bottom_bar.dart';
import 'package:bakground_removel_app/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CollageScreen extends StatelessWidget {
  CollageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 17.v),
                child: Column(children: [
                  _buildWidgetStack(context),
                  _buildEighteenRow(context),
                  SizedBox(height: 45.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 19.h),
                      child: CustomPinCodeTextField(
                          context: context, onChanged: (value) {})),
                  SizedBox(height: 5.v)
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
            margin: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 19.v),
            onTap: () {
              onTapClose(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Collage"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCheckmarkPurpleA40002,
              margin: EdgeInsets.fromLTRB(31.h, 16.v, 31.h, 19.v))
        ]);
  }

  /// Section Widget
  Widget _buildWidgetStack(BuildContext context) {
    return SizedBox(
        height: 393.adaptSize,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle23393x197,
              height: 393.v,
              width: 197.h,
              alignment: Alignment.centerLeft),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 393.v,
                  width: 197.h,
                  decoration: AppDecoration.outlinePurpleA40002,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGroup35347,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      alignment: Alignment.center)))
        ]));
  }

  /// Section Widget
  Widget _buildEighteenRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        decoration: AppDecoration.outlineBlack9002,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
              width: 111.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgQuestion,
                        height: 20.v,
                        width: 22.h,
                        margin: EdgeInsets.symmetric(vertical: 15.v)),
                    SizedBox(
                        height: 50.v,
                        child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.gray30001))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgQuestionGray600,
              height: 20.v,
              width: 22.h,
              margin: EdgeInsets.symmetric(vertical: 15.v))
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
