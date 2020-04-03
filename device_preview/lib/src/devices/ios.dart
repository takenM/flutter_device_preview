import 'package:device_preview/src/frames/mobile_device_frame.dart';
import 'package:flutter/widgets.dart';
import 'devices.dart';

final iosFreeform = Device.iOS(
  name: 'iOS Freeform',
  type: DeviceType.freeform,
  frameBuilder: (context, screen, screenSize, orientation) => MobileDeviceFrame(
    child: screen,
    orientation: orientation,
    screenSize: screenSize,
  ),
  landscape: MediaQueryData(
    padding: EdgeInsets.only(top: 20),
    size: Size(0, 0),
    devicePixelRatio: 2,
  ),
);

const iPhone5 = Device.iOS(
  name: 'iPhone 5',
  type: DeviceType.phone,
  frameBuilder: _phoneFrameWithoutNotch,
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(568, 320),
    devicePixelRatio: 2,
  ),
  portrait: MediaQueryData(
    padding: EdgeInsets.only(top: 20),
    size: Size(320, 568),
    devicePixelRatio: 2,
  ),
);

const iPhone8 = Device.iOS(
  name: 'iPhone 8',
  type: DeviceType.phone,
  frameBuilder: _phoneFrameWithoutNotch,
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(667, 375),
    devicePixelRatio: 2,
  ),
  portrait: MediaQueryData(
    padding: EdgeInsets.only(top: 20),
    size: Size(375, 667),
    devicePixelRatio: 2,
  ),
);

const iPhoneXs = Device.iOS(
  name: 'iPhone XS',
  type: DeviceType.phone,
  portrait: MediaQueryData(
      size: Size(375, 812),
      padding: EdgeInsets.only(
        top: 44,
        bottom: 34,
      ),
      devicePixelRatio: 3),
  landscape: MediaQueryData(
    size: Size(812, 375),
    padding: EdgeInsets.only(
      left: 44,
      right: 44,
      bottom: 21,
    ),
    devicePixelRatio: 3,
  ),
  frameBuilder: _phoneFrameWithNotch,
);

const iPhoneX = Device.iOS(
  name: 'iPhone X',
  type: DeviceType.phone,
  portrait: MediaQueryData(
      size: Size(375, 812),
      padding: EdgeInsets.only(
        top: 44,
        bottom: 34,
      ),
      devicePixelRatio: 3),
  landscape: MediaQueryData(
    size: Size(812, 375),
    padding: EdgeInsets.only(
      left: 44,
      right: 44,
      bottom: 21,
    ),
    devicePixelRatio: 3,
  ),
  frameBuilder: _phoneFrameWithNotch,
);

const iPhoneXsMax = Device.iOS(
  name: 'iPhone XS Max',
  type: DeviceType.phone,
  portrait: MediaQueryData(
    size: Size(414, 896),
    padding: EdgeInsets.only(
      top: 44,
      bottom: 34,
    ),
    devicePixelRatio: 3,
  ),
  landscape: MediaQueryData(
    size: Size(896, 414),
    padding: EdgeInsets.only(
      left: 44,
      right: 44,
      bottom: 21,
    ),
    devicePixelRatio: 3,
  ),
  frameBuilder: _phoneFrameWithNotch,
);

const iPhoneXr = Device.iOS(
  name: 'iPhone XR',
  type: DeviceType.phone,
  portrait: MediaQueryData(
    size: Size(414, 896),
    padding: EdgeInsets.only(
      top: 44,
      bottom: 34,
    ),
    devicePixelRatio: 2,
  ),
  landscape: MediaQueryData(
    size: Size(896, 414),
    padding: EdgeInsets.only(
      left: 44,
      right: 44,
      bottom: 21,
    ),
    devicePixelRatio: 2,
  ),
  frameBuilder: _phoneFrameWithNotch,
);

final iPadAir2 = Device.iOS(
  name: 'iPad Air 2',
  type: DeviceType.tablet,
  portrait: MediaQueryData(
      padding: EdgeInsets.only(top: 20),
      size: Size(768, 1024),
      devicePixelRatio: 2),
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(1024, 768),
    devicePixelRatio: 2,
  ),
  frameBuilder: (context, screen, screenSize, isRotated) =>
      _tabletThinFrameWithoutNotch(
    context,
    screen,
    screenSize,
    isRotated,
    768,
  ),
);

final iPadPro_129_2 = Device.iOS(
  name: 'iPad Pro (12.9-inch) (2nd generation)',
  type: DeviceType.tablet,
  portrait: MediaQueryData(
      padding: EdgeInsets.only(top: 20),
      size: Size(1024, 1336),
      devicePixelRatio: 2),
  landscape: MediaQueryData(
    padding: EdgeInsets.zero,
    size: Size(1336, 1024),
    devicePixelRatio: 2,
  ),
  frameBuilder: (context, screen, screenSize, isRotated) =>
      _tabletThinFrameWithoutNotch(
    context,
    screen,
    screenSize,
    isRotated,
    834,
  ),
);

final watch40mm = Device.iOS(
    name: 'Watch 40mm',
    type: DeviceType.watch,
    frameBuilder: (context, screen, screenSize, orientation) =>
        MobileDeviceFrame(
          orientation: orientation,
          screenSize: screenSize,
          child: screen,
          borders: EdgeInsets.all(16),
          edgeRadius: BorderRadius.all(Radius.circular(42)),
          screenRadius: BorderRadius.all(Radius.circular(32)),
        ),
    landscape: const MediaQueryData(
      padding: EdgeInsets.zero,
      size: Size(162, 197),
      devicePixelRatio: 2,
    ),
    portrait: const MediaQueryData(
      padding: EdgeInsets.zero,
      size: Size(197, 162),
      devicePixelRatio: 2,
    ));

Widget _phoneFrameWithNotch(
  BuildContext context,
  Widget screen,
  Size screenSize,
  DeviceOrientation orientation,
) =>
    MobileDeviceFrame(
        orientation: orientation,
        screenSize: screenSize,
        child: screen,
        borders: EdgeInsets.only(
          top: 18,
          right: 18,
          left: 18,
          bottom: 18,
        ),
        edgeRadius: BorderRadius.all(Radius.circular(56)),
        screenRadius: BorderRadius.all(Radius.circular(38)),
        sideButtons: [
          DeviceSideButton.left(
            fromTop: 116,
            size: 35,
            thickness: 6,
          ),
          DeviceSideButton.left(
            fromTop: 176,
            size: 60,
            thickness: 6,
          ),
          DeviceSideButton.left(
            fromTop: 240,
            size: 60,
            thickness: 6,
          ),
          DeviceSideButton.right(
            fromTop: 176,
            size: 90,
            thickness: 6,
          ),
        ],
        notch: DeviceNotch(
          width: 210,
          height: 28,
          joinRadius: Radius.circular(12),
          radius: Radius.circular(24),
        ));

Widget _phoneFrameWithoutNotch(
  BuildContext context,
  Widget screen,
  Size screenSize,
  DeviceOrientation orientation,
) =>
    MobileDeviceFrame(
      orientation: orientation,
      screenSize: screenSize,
      child: screen,
      borders: EdgeInsets.only(
        top: 96,
        right: 18,
        left: 18,
        bottom: 96,
      ),
      edgeRadius: BorderRadius.all(Radius.circular(56)),
      screenRadius: BorderRadius.all(Radius.circular(2)),
      sideButtons: [
        DeviceSideButton.left(
          fromTop: 96,
          size: 35,
          thickness: 6,
        ),
        DeviceSideButton.left(
          fromTop: 156,
          size: 60,
          thickness: 6,
        ),
        DeviceSideButton.left(
          fromTop: 220,
          size: 60,
          thickness: 6,
        ),
        DeviceSideButton.right(
          fromTop: 156,
          size: 60,
          thickness: 6,
        ),
      ],
    );

Widget _tabletThinFrameWithoutNotch(
  BuildContext context,
  Widget screen,
  Size screenSize,
  DeviceOrientation orientation,
  double width,
) =>
    MobileDeviceFrame(
      orientation: orientation,
      screenSize: screenSize,
      child: screen,
      borders: EdgeInsets.only(
        top: 36,
        right: 36,
        left: 36,
        bottom: 36,
      ),
      edgeRadius: BorderRadius.all(Radius.circular(56)),
      screenRadius: BorderRadius.all(Radius.circular(16)),
      sideButtons: [
        DeviceSideButton.right(
          fromTop: 96,
          size: 42,
          thickness: 6,
        ),
        DeviceSideButton.right(
          fromTop: 146,
          size: 42,
          thickness: 6,
        ),
        DeviceSideButton.top(
          fromLeft: width - 24,
          size: 40,
          thickness: 6,
        ),
      ],
    );
