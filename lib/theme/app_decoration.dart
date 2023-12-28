import 'package:flutter/material.dart';
import 'package:prakash_s_application3/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90002,
      );
  static BoxDecoration get fillGray90001 => BoxDecoration(
        color: appTheme.gray90001,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackFToBlackF => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.3),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black900F9,
            appTheme.black900F9,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onSecondaryContainer,
            width: 1.h,
          ),
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder47 => BorderRadius.circular(
        47.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
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
