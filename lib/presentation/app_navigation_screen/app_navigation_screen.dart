import 'package:bakground_removel_app/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscription Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.subscriptionTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.appScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "App Screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Main",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.mainScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Source",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.sourceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Photo Upload",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.photoUploadScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Image Booth",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.imageBoothScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "BG REMOVE Loading",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bgRemoveLoadingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bg Removed",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bgRemovedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Crop",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cropScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Collage",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.collageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.filterThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Effects - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.effectsContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TExt",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.textScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Text with keyboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.textWithKeyboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Text COlor",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.textColorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Text Styles",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.textStylesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Text Alignment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.textAlignmentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.filterOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.filterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Contact Us",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.contactUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscription",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.subscriptionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscription Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.subscriptionThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Privacy Policy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Terms & Conditions",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.termsConditionsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
