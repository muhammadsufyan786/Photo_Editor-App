import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumGothamBlack900 =>
      theme.textTheme.bodyMedium!.gotham.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumMontserratBlack900 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumPoppinsBlack900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumRobotoPurpleA40001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.purpleA40001,
      );
  static get bodyMediumff727272 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF727272),
      );
  static get bodyMediumff727272_1 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF727272),
      );
  static get bodySmallLEMONMILKIndigo70001 =>
      theme.textTheme.bodySmall!.lEMONMILK.copyWith(
        color: appTheme.indigo70001,
      );
  static get bodySmallNunitoPrimary =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  static get bodySmallNunitoff727272 =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: Color(0XFF727272),
      );
  // Headline text style
  static get headlineMediumNunitoBlack900 =>
      theme.textTheme.headlineMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumNunitoBlack900Regular =>
      theme.textTheme.headlineMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallPurpleA40002 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.purpleA40002,
      );
  static get headlineSmallff2f2f2f => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF2F2F2F),
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeDeeppurpleA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepPurpleA200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeIndigo70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo70001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePinkA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.pinkA200,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePinkA200Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.pinkA200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePurpleA40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.purpleA40001,
      );
  static get labelLargePurpleA40003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.purpleA40003,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSFProTextPrimaryContainer =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeff35339a => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF35339A),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeff35339aMedium => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF35339A),
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLarge21 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 21.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.54),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.54),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumIndigo70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo70001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryMedium => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryMedium16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryMedium16_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryMedium16_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryMedium17 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryMedium17_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff35339a => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF35339A),
        fontSize: 16.fSize,
      );
  static get titleMediumff35339aMedium => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF35339A),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray90001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleSmallDeeppurpleA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurpleA200,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray600_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600.withOpacity(0.53),
      );
  static get titleSmallIndigo70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo70001,
      );
  static get titleSmallIndigo70001SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo70001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallIndigoA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA200,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRed50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red50001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSFProTextGray600 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallff000000 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF000000),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallff000000SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallff35339a => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF35339A),
      );
  static get titleSmallff3c3c3c => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF3C3C3C),
      );
  static get titleSmallff727272 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF727272),
      );
  static get titleSmallff727272_1 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF727272),
      );
  static get titleSmallff9c9c9c => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF9C9C9C),
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get lEMONMILK {
    return copyWith(
      fontFamily: 'LEMON MILK',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get gotham {
    return copyWith(
      fontFamily: 'Gotham',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
