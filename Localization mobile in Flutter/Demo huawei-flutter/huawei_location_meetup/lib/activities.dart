import 'package:huawei_location/activity/activity_conversion_info.dart';
import 'package:huawei_location/activity/activity_identification_data.dart';

final List<ActivityConversionInfo> activityConversions = <ActivityConversionInfo>[
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.VEHICLE, conversionType: 0),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.VEHICLE, conversionType: 1),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.BIKE, conversionType: 0),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.BIKE, conversionType: 1),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.FOOT, conversionType: 0),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.FOOT, conversionType: 1),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.STILL, conversionType: 0),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.STILL, conversionType: 1),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.WALKING, conversionType: 0),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.WALKING, conversionType: 1),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.RUNNING, conversionType: 0),
  ActivityConversionInfo(
      activityType: ActivityIdentificationData.RUNNING, conversionType: 1),
];