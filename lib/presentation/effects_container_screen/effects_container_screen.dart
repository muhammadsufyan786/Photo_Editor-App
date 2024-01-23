import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/presentation/effects_page/effects_page.dart';
import 'package:bakground_removel_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EffectsContainerScreen extends StatelessWidget {
  EffectsContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.effectsPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 24.h, right: 8.h),
                child: _buildBottomBar(context))));
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
}
