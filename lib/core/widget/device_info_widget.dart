import 'package:flutter/material.dart';
import 'package:responsiveui/core/functions/fuctions.dart';
import 'package:responsiveui/core/model/device_info.dart';

class DeviceInfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context ,DeviceInfo deviceInfo) builder ;
  DeviceInfoWidget({this.builder});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constrain){
        MediaQueryData mediaQueryData = MediaQuery.of(context);
        var deviceInfo1 = DeviceInfo(
          orientation: mediaQueryData.orientation ,
          screenWidth: mediaQueryData.size.width,
          screenHeight: mediaQueryData.size.height,
          localHeight: constrain.maxHeight,
          localWidth: constrain.maxWidth,
          deviceType1: getDeviceType(mediaQueryData),
        );

        return builder(context , deviceInfo1 ) ;
      },
    );

  }
}
