import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/presentation/effects_page/effects_page.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class BgRemoveLoadingScreen extends StatelessWidget {
  BgRemoveLoadingScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 17.v),
          child: Column(
            children: [
              _buildTwenty(context),
              _buildView(context),
              SizedBox(height: 72.v),
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    right: 21.h,
                  ),
                  child: Slider(
                    value: 0.0,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Remove Background",
      ),
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return SizedBox(
      height: 393.adaptSize,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle23393x393,
            height: 393.adaptSize,
            width: 393.adaptSize,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLoadingGiff2,
            height: 100.adaptSize,
            width: 100.adaptSize,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 50.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray10002,
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.15),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorGray600,
            height: 20.v,
            width: 22.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 86.h),
          ),
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
                    decoration: BoxDecoration(
                      color: appTheme.gray30001,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorGray60020x22,
                    height: 20.v,
                    width: 22.h,
                    margin: EdgeInsets.only(
                      left: 87.h,
                      top: 15.v,
                      bottom: 15.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
