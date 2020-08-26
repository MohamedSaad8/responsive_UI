import 'package:flutter/material.dart';
import '../enums/enums.dart';

DeviceType1 getDeviceType(MediaQueryData mediaQueryData) {
  Orientation orientation = mediaQueryData.orientation;
  double width = 0;
  if (orientation == Orientation.landscape) {
    width = mediaQueryData.size.height;
  } else {
    width = mediaQueryData.size.width;
  }

  if (width >= 950) return DeviceType1.desktop;
  if (width >= 600) return DeviceType1.tablet;
  return DeviceType1.mobile;
}