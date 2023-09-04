import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/assets/app_icons.dart';

final class AppFeatures {
  static final loginFeatureSet = <Image, String>{
    Image.asset(
      AppIcons.activity,
      width: 24,
    ): "Save your App Download History",
    Image.asset(
      AppIcons.bag,
      width: 24,
    ): "Publish Apps for Free",
    Image.asset(
      AppIcons.tick,
      width: 24,
    ): "Get Your Publisher Profile",
    Image.asset(
      AppIcons.tag,
      width: 24,
    ): "Write App Reviews",
    Image.asset(
      AppIcons.favourite,
      width: 24,
    ): "Manage your Collection",
  };
}
