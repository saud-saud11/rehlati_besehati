// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TripDestination _$TripDestinationFromJson(Map<String, dynamic> json) =>
    _TripDestination(
      id: json['id'] as String,
      countryCode: json['countryCode'] as String,
      regionId: json['regionId'] as String?,
      cityName: json['cityName'] as String?,
      sequenceOrder: (json['sequenceOrder'] as num).toInt(),
      arrivalDate: DateTime.parse(json['arrivalDate'] as String),
      departureDate: DateTime.parse(json['departureDate'] as String),
    );

Map<String, dynamic> _$TripDestinationToJson(_TripDestination instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'regionId': instance.regionId,
      'cityName': instance.cityName,
      'sequenceOrder': instance.sequenceOrder,
      'arrivalDate': instance.arrivalDate.toIso8601String(),
      'departureDate': instance.departureDate.toIso8601String(),
    };
