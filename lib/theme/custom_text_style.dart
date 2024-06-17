import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/utils/size_utils.dart';
import 'package:bacakomik_v3/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get bodyLargeff000000 => theme.textTheme.bodyLarge!.copyWith(
        color: const Color(0XFF000000),
        fontSize: 16.fSize,
      );
  static get bodyLargeff1f79ff => theme.textTheme.bodyLarge!.copyWith(
        color: const Color(0XFF1F79FF),
        fontSize: 16.fSize,
      );
  static get bodyLargeff414141 => theme.textTheme.bodyLarge!.copyWith(
        color: const Color(0XFF414141),
        fontSize: 16.fSize,
      );
  static get bodySmallDMSansIndigo900 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.indigo900,
        fontSize: 11.fSize,
      );
  static get bodySmallDMSansPrimary =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPoppinsRed700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.red700,
        fontSize: 10.fSize,
      );
  static get bodySmallRed700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red700,
      );
  static get bodySmallRobotoPrimary =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallTimesNewRomanPrimary =>
      theme.textTheme.bodySmall!.timesNewRoman.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 11.fSize,
      );
  static TextStyle get bodyLarge16_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );

  static TextStyle get bodyLargeBlack90016 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );

  static TextStyle get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );

  static TextStyle get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
      );

  // Headline text style
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w500,
      );

  // Label text style
  static get labelLargeDMSansIndigo900 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.indigo900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get titleLargeGray80001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumUbuntuWhiteA700 =>
      theme.textTheme.titleMedium!.ubuntu.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumUbuntuffffffff =>
      theme.textTheme.titleMedium!.ubuntu.copyWith(
        color: const Color(0XFFFFFFFF),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );

  static TextStyle get titleSmallBlack900 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get ubuntu {
    return copyWith(
      fontFamily: 'Ubuntu',
    );
  }

  TextStyle get timesNewRoman {
    return copyWith(
      fontFamily: 'Times New Roman',
    );
  }
}
