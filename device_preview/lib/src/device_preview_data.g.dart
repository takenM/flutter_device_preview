// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_preview_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DevicePreviewData _$_$_DevicePreviewDataFromJson(Map<String, dynamic> json) {
  return _$_DevicePreviewData(
    isEnabled: json['isEnabled'] as bool ?? true,
    orientation:
        _$enumDecodeNullable(_$OrientationEnumMap, json['orientation']) ??
            Orientation.portrait,
    deviceIdentifier: json['deviceIdentifier'] as String,
    locale: json['locale'] as String ?? 'en-US',
    isFrameVisible: json['isFrameVisible'] as bool ?? true,
    isDarkMode: json['isDarkMode'] as bool ?? false,
    boldText: json['boldText'] as bool ?? false,
    disableAnimations: json['disableAnimations'] as bool ?? false,
    highContrast: json['highContrast'] as bool ?? false,
    accessibleNavigation: json['accessibleNavigation'] as bool ?? false,
    invertColors: json['invertColors'] as bool ?? false,
    textScaleFactor: (json['textScaleFactor'] as num)?.toDouble() ?? 1.0,
    customDevice: json['customDevice'] == null
        ? null
        : CustomDeviceInfoData.fromJson(
            json['customDevice'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DevicePreviewDataToJson(
        _$_DevicePreviewData instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'orientation': _$OrientationEnumMap[instance.orientation],
      'deviceIdentifier': instance.deviceIdentifier,
      'locale': instance.locale,
      'isFrameVisible': instance.isFrameVisible,
      'isDarkMode': instance.isDarkMode,
      'boldText': instance.boldText,
      'disableAnimations': instance.disableAnimations,
      'highContrast': instance.highContrast,
      'accessibleNavigation': instance.accessibleNavigation,
      'invertColors': instance.invertColors,
      'textScaleFactor': instance.textScaleFactor,
      'customDevice': instance.customDevice,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$OrientationEnumMap = {
  Orientation.portrait: 'portrait',
  Orientation.landscape: 'landscape',
};

_$_CustomDeviceInfoData _$_$_CustomDeviceInfoDataFromJson(
    Map<String, dynamic> json) {
  return _$_CustomDeviceInfoData(
    id: json['id'] as String,
    type: _$enumDecodeNullable(_$DeviceTypeEnumMap, json['type']),
    platform: _$enumDecodeNullable(_$TargetPlatformEnumMap, json['platform']),
    name: json['name'] as String,
    rotatedSafeAreas:
        const EdgeInsetsJsonConverter().fromJson(json['rotatedSafeAreas']),
    safeAreas: const EdgeInsetsJsonConverter().fromJson(json['safeAreas']),
    pixelRatio: (json['pixelRatio'] as num)?.toDouble(),
    screenSize: const SizeJsonConverter().fromJson(json['screenSize']),
  );
}

Map<String, dynamic> _$_$_CustomDeviceInfoDataToJson(
        _$_CustomDeviceInfoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$DeviceTypeEnumMap[instance.type],
      'platform': _$TargetPlatformEnumMap[instance.platform],
      'name': instance.name,
      'rotatedSafeAreas':
          const EdgeInsetsJsonConverter().toJson(instance.rotatedSafeAreas),
      'safeAreas': const EdgeInsetsJsonConverter().toJson(instance.safeAreas),
      'pixelRatio': instance.pixelRatio,
      'screenSize': const SizeJsonConverter().toJson(instance.screenSize),
    };

const _$DeviceTypeEnumMap = {
  DeviceType.unknown: 'unknown',
  DeviceType.phone: 'phone',
  DeviceType.tablet: 'tablet',
  DeviceType.tv: 'tv',
  DeviceType.desktop: 'desktop',
  DeviceType.laptop: 'laptop',
};

const _$TargetPlatformEnumMap = {
  TargetPlatform.android: 'android',
  TargetPlatform.fuchsia: 'fuchsia',
  TargetPlatform.iOS: 'iOS',
  TargetPlatform.linux: 'linux',
  TargetPlatform.macOS: 'macOS',
  TargetPlatform.windows: 'windows',
};
