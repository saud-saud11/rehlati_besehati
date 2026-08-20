// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Trip _$TripFromJson(Map<String, dynamic> json) => _Trip(
  id: json['id'] as String,
  userId: json['userId'] as String,
  title: json['title'] as String?,
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: DateTime.parse(json['endDate'] as String),
  status: json['status'] as String? ?? 'planning',
  readinessScore: (json['readinessScore'] as num?)?.toInt() ?? 0,
  destinations:
      (json['destinations'] as List<dynamic>?)
          ?.map((e) => TripDestination.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  travelers:
      (json['travelers'] as List<dynamic>?)
          ?.map((e) => TravelerProfile.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  activities:
      (json['activities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$TripToJson(_Trip instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'title': instance.title,
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate.toIso8601String(),
  'status': instance.status,
  'readinessScore': instance.readinessScore,
  'destinations': instance.destinations,
  'travelers': instance.travelers,
  'activities': instance.activities,
};
