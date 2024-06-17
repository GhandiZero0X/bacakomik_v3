import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA100,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red50,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          )
        ],
      );
  static BoxDecoration get gradientGrayToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.65, 0),
          end: const Alignment(0.65, 1),
          colors: [
            appTheme.gray500,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );

  static BoxDecoration get gradientIndigoAToAmber => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.82, 0.87),
          end: const Alignment(-0.4, -0.34),
          colors: [
            appTheme.indigoA100,
            appTheme.amber100,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToYellow => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.4, 0.59),
          end: const Alignment(-0.2, -0.2),
          colors: [
            appTheme.indigoA100,
            appTheme.yellow100,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToYellow100 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.66),
          end: const Alignment(-0.07, -0.36),
          colors: [
            appTheme.indigoA100,
            appTheme.yellow100,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToYellow1001 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.63, 0.58),
          end: const Alignment(-0.17, -0.21),
          colors: [
            appTheme.indigoA100,
            appTheme.yellow100,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              16,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnError => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onError.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              16,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary3 => const BoxDecoration();

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              16,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder33 => BorderRadius.circular(
        33.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        6.h,
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder37 => BorderRadius.circular(
        37.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
  // Rounded borders
  static BorderRadius get roundedBorder6 => BorderRadius.circular(6.h);
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
