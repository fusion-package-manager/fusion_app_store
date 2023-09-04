import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTheme {
  static const textButtonBackground = Color(0xFF000000);
  static final textButtonStyle =
      fontBold.copyWith(fontSize: 20, color: Colors.white);

  static TextStyle get fontBold => const TextStyle(
        fontFamily: "Sen",
        fontWeight: FontWeight.bold,
      );

  static TextStyle get fontExtraBold => const TextStyle(
        fontFamily: "Sen",
        fontWeight: FontWeight.w900,
      );

  static TextStyle fontSize(size) => TextStyle(
        fontFamily: "Sen",
        fontSize: size,
      );

  static TextStyle fontSizeScaled(size) => TextStyle(
        fontFamily: "Sen",
        fontSize: getResponsiveSize(size),
      );

  static double getResponsiveSize(int size) {
    double responsiveScale = ResponsiveScale.getScale();
    double value = size * responsiveScale;
    return value;
  }
}

class ResponsiveScale {
  static const mobileRange = 450.0;
  static const tabletRange = 800.0;
  static const desktopRange = 1200.0;
  static const monitor2kRange = 1920.0;
  static const monitor4kRange = double.infinity;

  static const mobileScaleFactor = 0.4;
  static const tabletScaleFactor = 0.6;
  static const desktopScaleFactor = 1.0;
  static const monitor2kScaleFactor = 1.4;
  static const monitor4kScaleFactor = 1.6;

  static double getScale() {
    var context = Get.context;
    if (context == null) {
      debugPrint(
          "[WARNING] Cannot Determine the device size, Using desktopScaleFactor instead.");
      return desktopScaleFactor;
    }
    var size = MediaQuery.sizeOf(context).width;
    if (size <= mobileRange) {
      return mobileScaleFactor;
    } else if (size <= tabletRange) {
      return tabletScaleFactor;
    } else if (size <= desktopRange) {
      return desktopScaleFactor;
    } else if (size <= monitor2kRange) {
      return monitor2kScaleFactor;
    } else {
      return monitor4kScaleFactor;
    }
  }

  static scale(int size) {
    return getScale() * size;
  }
}

class PageResizeObserver with WidgetsBindingObserver {
  @override
  void didChangeMetrics() {
    Get.reload();
    super.didChangeMetrics();
  }
}

extension ConfigurableTextStyle on TextStyle {
  TextStyle withColor(Color color) {
    return copyWith(
      color: color,
    );
  }

  TextStyle makeBold() {
    return copyWith(
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle makeExtraBold() {
    return copyWith(
      fontWeight: FontWeight.w900,
    );
  }

  TextStyle fontSize(double size) {
    return copyWith(
      fontSize: size,
    );
  }
}
