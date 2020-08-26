import 'package:flutter/cupertino.dart';
import 'package:responsiveui/core/enums/enums.dart';

class DeviceInfo {
 final Orientation orientation;
 final double screenWidth;
 final double screenHeight;
 final double localWidth;
 final double localHeight;
 final DeviceType1 deviceType1;

  DeviceInfo(
      {this.orientation,
      this.screenWidth,
      this.screenHeight,
      this.localWidth,
      this.localHeight,
      this.deviceType1});


}
