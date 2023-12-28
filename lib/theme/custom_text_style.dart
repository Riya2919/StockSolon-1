import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 25.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeGray200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray200,
      );
  static get bodyLargeInterGray40002 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray40002,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumGray10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray10001,
      );
  static get bodyMediumGreen300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green300,
      );
  static get bodyMediumInterPrimary =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyMediumBluegray10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray10001,
        fontSize: 15.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallInterBlack900_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallInterBlack900_2 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallInterBluegray400 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallInterGreen600 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.green600,
      );
  static get bodySmallInterOnSecondaryContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.9),
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallInterPrimary_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallInterRed500 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.red500,
      );
  static get bodySmallInterTeal300 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.teal300,
      );
  static get bodySmallRed300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red300,
      );
  static get bodySmallRed30011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red300,
        fontSize: 11.fSize,
      );
  static get bodySmallTeal30001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal30001,
        fontSize: 11.fSize,
      );
  static get bodySmallTeal30001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal30001,
      );
  // Headline text style
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRoboto => theme.textTheme.labelLarge!.roboto;
  static get labelLargeRobotoGray10001 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.gray10001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRobotoGray10001_1 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.gray10001,
      );
  static get labelLargeRobotoRed300 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.red300,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRobotoTeal30001 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.teal30001,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimary22 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
      );
  static get titleLargeRobotoGray10001 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray10001,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterOnSecondaryContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(0.9),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.fSize,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPink600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink600,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoBlack900 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoGray10001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray10001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoGreen300 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.green300,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
