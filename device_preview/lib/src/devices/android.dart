import 'package:device_preview/src/frames/mobile_device_frame.dart';
import 'package:flutter/widgets.dart';

import 'devices.dart';

final freeform = Device.android(
  name: 'Android Freeform',
  type: DeviceType.freeform,
  frameBuilder: (context, screen, screenSize, orientation) => MobileDeviceFrame(
    child: screen,
    orientation: orientation,
    screenSize: screenSize,
  ),
  landscape: MediaQueryData(
    padding: EdgeInsets.only(
      top: 20,
    ),
    size: Size(0, 0),
    devicePixelRatio: 2,
  ),
);

// Android One
final smallPhone = Device.android(
  name: 'Small phone',
  type: DeviceType.phone,
  frameBuilder: _phoneFrameWithoutNotch,
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(569, 320),
    devicePixelRatio: 1.5,
  ),
  portrait: MediaQueryData(
    padding: EdgeInsets.only(
      top: 20,
    ),
    size: Size(320, 569),
    devicePixelRatio: 1.5,
  ),
);

// S8
final mediumPhone = Device.android(
  name: 'Medium phone',
  type: DeviceType.phone,
  frameBuilder: _phoneFrameWithoutNotch,
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(740, 360),
    devicePixelRatio: 4,
  ),
  portrait: MediaQueryData(
    padding: EdgeInsets.only(
      top: 20,
    ),
    size: Size(360, 740),
    devicePixelRatio: 4,
  ),
);

// Galaxy Note 4
final largePhone = Device.android(
  name: 'Large phone',
  type: DeviceType.phone,
  frameBuilder: _phoneFrameWithoutNotch,
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(853, 480),
    devicePixelRatio: 3,
  ),
  portrait: MediaQueryData(
    padding: EdgeInsets.only(
      top: 20,
    ),
    size: Size(480, 853),
    devicePixelRatio: 3,
  ),
);

// Nexus 7
final smallTablet = Device.android(
  name: 'Small tablet',
  type: DeviceType.tablet,
  frameBuilder: _phoneFrameWithoutNotch,
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(960, 600),
    devicePixelRatio: 2,
  ),
  portrait: MediaQueryData(
    padding: EdgeInsets.only(
      top: 20,
    ),
    size: Size(600, 960),
    devicePixelRatio: 2,
  ),
);

// Galaxy Tab 10
final mediumTablet = Device.android(
  name: 'Medium tablet',
  type: DeviceType.tablet,
  frameBuilder: _phoneFrameWithoutNotch,
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(1280, 800),
    devicePixelRatio: 2,
  ),
  portrait: MediaQueryData(
    padding: EdgeInsets.only(
      top: 20,
    ),
    size: Size(800, 1280),
    devicePixelRatio: 2,
  ),
);

// LG G Watch
final watch = Device.android(
  name: 'Watch ',
  type: DeviceType.watch,
  frameBuilder: (context, screen, screenSize, orientation) => MobileDeviceFrame(
    orientation: orientation,
    screenSize: screenSize,
    child: screen,
    borders: EdgeInsets.all(42),
    edgeRadius: BorderRadius.all(Radius.circular((187 + 42 * 2) / 2)),
    screenRadius: BorderRadius.all(Radius.circular((187) / 2)),
  ),
  landscape: const MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(187, 187),
    devicePixelRatio: 2,
  ),
  portrait: const MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(187, 187),
    devicePixelRatio: 2,
  ),
);

Widget _phoneFrameWithoutNotch(
  BuildContext context,
  Widget screen,
  Size screenSize,
  DeviceOrientation orientation,
) =>
    MobileDeviceFrame(
      borderSize: 2,
      orientation: orientation,
      screenSize: screenSize,
      child: screen,
      borders: EdgeInsets.only(
        top: 64,
        right: 8,
        left: 8,
        bottom: 38,
      ),
      edgeRadius: BorderRadius.all(Radius.circular(56)),
      screenRadius: BorderRadius.all(Radius.circular(24)),
      sideButtons: [
        DeviceSideButton.right(
          fromTop: 156,
          size: 60,
          thickness: 3,
        ),
        DeviceSideButton.right(
          fromTop: 236,
          size: 100,
          thickness: 3,
        ),
      ],
    );
