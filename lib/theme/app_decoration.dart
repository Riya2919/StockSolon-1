import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  // static BoxDecoration get outlineGray => BoxDecoration(
  //       color: appTheme.whiteA700,
  //       border: Border.all(
  //         color: appTheme.gray200,
  //         width: 1.h,
  //       ),
  //     );
  static BoxDecoration get outlineGray10001 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray10001,
          width: 2.h,
        ),
      );
  // static BoxDecoration get fillGray => BoxDecoration(
  //       color: appTheme.gray10001,
  //     );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA200,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA200,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow900,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray800,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray800,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray80001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray80001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: appTheme.gray40001,
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderLR15 => BorderRadius.horizontal(
        right: Radius.circular(15.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder195 => BorderRadius.circular(
        195.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
      );
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