import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackBarType {
  success,
  error,
}

final class SnackBarBuilder {
  static void showSnackBar({
    required Text child,
    required SnackBarType type,
  }) {
    final snackBar = SnackBar(
      backgroundColor: Colors.white,
      width: 400,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      content: SizedBox(
        child: Row(
          children: [
            _getIconForType(type),
            const SizedBox(width: 15),
            Flexible(child: child),
          ],
        ),
      ),
    );
    ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
  }

  static Icon _getIconForType(SnackBarType type) {
    switch (type) {
      case SnackBarType.success:
        return const Icon(
          Icons.done_outlined,
          color: Colors.green,
          size: 32,
        );
      case SnackBarType.error:
        return const Icon(
          Icons.error_outline_outlined,
          color: Colors.red,
          size: 32,
        );
    }
  }
}
