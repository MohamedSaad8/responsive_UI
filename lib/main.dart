import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:responsiveui/core/widget/device_info_widget.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        body: Container(
          color: Colors.black,
          width: screenWidth ,
          height: screenHeight ,
          child: DeviceInfoWidget(
            builder: (context, deviceInfo2) {
              print(deviceInfo2.orientation);
              print(deviceInfo2.deviceType1);
              print(deviceInfo2.screenWidth);
              print(deviceInfo2.screenHeight);
              print(deviceInfo2.localHeight);
              print(deviceInfo2.localWidth);
              return Center(
                child: Container(
                  color: Colors.red,
                  width: deviceInfo2.localWidth / 2,
                  height: deviceInfo2.localHeight / 2,
                  child: DeviceInfoWidget(builder: (context, deviceInfo3) {
                    return Center(
                      child: Container(
                        color: Colors.yellow,
                        width: deviceInfo3.localWidth / 2,
                        height: deviceInfo3.localHeight / 2,
                      ),
                    );
                  }),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
