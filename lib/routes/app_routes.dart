import 'package:flutter/material.dart';
import 'package:bakground_removel_app/presentation/subscription_two_screen/subscription_two_screen.dart';
import 'package:bakground_removel_app/presentation/splash_screen/splash_screen.dart';
import 'package:bakground_removel_app/presentation/app_screen/app_screen.dart';
import 'package:bakground_removel_app/presentation/app_screen_one_screen/app_screen_one_screen.dart';
import 'package:bakground_removel_app/presentation/main_screen/main_screen.dart';
import 'package:bakground_removel_app/presentation/source_screen/source_screen.dart';
import 'package:bakground_removel_app/presentation/photo_upload_screen/photo_upload_screen.dart';
import 'package:bakground_removel_app/presentation/image_booth_screen/image_booth_screen.dart';
import 'package:bakground_removel_app/presentation/bg_remove_loading_screen/bg_remove_loading_screen.dart';
import 'package:bakground_removel_app/presentation/bg_removed_screen/bg_removed_screen.dart';
import 'package:bakground_removel_app/presentation/crop_screen/crop_screen.dart';
import 'package:bakground_removel_app/presentation/collage_screen/collage_screen.dart';
import 'package:bakground_removel_app/presentation/filter_three_screen/filter_three_screen.dart';
import 'package:bakground_removel_app/presentation/effects_container_screen/effects_container_screen.dart';
import 'package:bakground_removel_app/presentation/text_screen/text_screen.dart';
import 'package:bakground_removel_app/presentation/text_with_keyboard_screen/text_with_keyboard_screen.dart';
import 'package:bakground_removel_app/presentation/text_color_screen/text_color_screen.dart';
import 'package:bakground_removel_app/presentation/text_styles_screen/text_styles_screen.dart';
import 'package:bakground_removel_app/presentation/text_alignment_screen/text_alignment_screen.dart';
import 'package:bakground_removel_app/presentation/filter_one_screen/filter_one_screen.dart';
import 'package:bakground_removel_app/presentation/filter_screen/filter_screen.dart';
import 'package:bakground_removel_app/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:bakground_removel_app/presentation/subscription_screen/subscription_screen.dart';
import 'package:bakground_removel_app/presentation/subscription_three_screen/subscription_three_screen.dart';
import 'package:bakground_removel_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:bakground_removel_app/presentation/terms_conditions_screen/terms_conditions_screen.dart';
import 'package:bakground_removel_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String subscriptionTwoScreen = '/subscription_two_screen';

  static const String splashScreen = '/splash_screen';

  static const String appScreen = '/app_screen';

  static const String appScreenOneScreen = '/app_screen_one_screen';

  static const String mainScreen = '/main_screen';

  static const String sourceScreen = '/source_screen';

  static const String photoUploadScreen = '/photo_upload_screen';

  static const String imageBoothScreen = '/image_booth_screen';

  static const String bgRemoveLoadingScreen = '/bg_remove_loading_screen';

  static const String bgRemovedScreen = '/bg_removed_screen';

  static const String cropScreen = '/crop_screen';

  static const String collageScreen = '/collage_screen';

  static const String filterThreeScreen = '/filter_three_screen';

  static const String effectsPage = '/effects_page';

  static const String effectsContainerScreen = '/effects_container_screen';

  static const String textScreen = '/text_screen';

  static const String textWithKeyboardScreen = '/text_with_keyboard_screen';

  static const String textColorScreen = '/text_color_screen';

  static const String textStylesScreen = '/text_styles_screen';

  static const String textAlignmentScreen = '/text_alignment_screen';

  static const String filterOneScreen = '/filter_one_screen';

  static const String filterScreen = '/filter_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String subscriptionThreeScreen = '/subscription_three_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String termsConditionsScreen = '/terms_conditions_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    subscriptionTwoScreen: (context) => SubscriptionTwoScreen(),
    splashScreen: (context) => SplashScreen(),
    appScreen: (context) => AppScreen(),
    appScreenOneScreen: (context) => AppScreenOneScreen(),
    mainScreen: (context) => MainScreen(),
    sourceScreen: (context) => SourceScreen(),
    photoUploadScreen: (context) => PhotoUploadScreen(),
    imageBoothScreen: (context) => ImageBoothScreen(),
    bgRemoveLoadingScreen: (context) => BgRemoveLoadingScreen(),
    bgRemovedScreen: (context) => BgRemovedScreen(),
    cropScreen: (context) => CropScreen(),
    collageScreen: (context) => CollageScreen(),
    filterThreeScreen: (context) => FilterThreeScreen(),
    effectsContainerScreen: (context) => EffectsContainerScreen(),
    textScreen: (context) => TextScreen(),
    textWithKeyboardScreen: (context) => TextWithKeyboardScreen(),
    textColorScreen: (context) => TextColorScreen(),
    textStylesScreen: (context) => TextStylesScreen(),
    textAlignmentScreen: (context) => TextAlignmentScreen(),
    filterOneScreen: (context) => FilterOneScreen(),
    filterScreen: (context) => FilterScreen(),
    contactUsScreen: (context) => ContactUsScreen(),
    subscriptionScreen: (context) => SubscriptionScreen(),
    subscriptionThreeScreen: (context) => SubscriptionThreeScreen(),
    privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    termsConditionsScreen: (context) => TermsConditionsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
