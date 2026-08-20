// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TripRecommendation _$TripRecommendationFromJson(Map<String, dynamic> json) =>
    _TripRecommendation(
      id: json['id'] as String,
      tripId: json['tripId'] as String,
      travelerId: json['travelerId'] as String,
      ruleId: json['ruleId'] as String,
      category: json['category'] as String,
      status: json['status'] as String,
      titleAr: json['titleAr'] as String,
      reasonAr: json['reasonAr'] as String,
      sourceName: json['sourceName'] as String,
      generatedAt: DateTime.parse(json['generatedAt'] as String),
    );

Map<String, dynamic> _$TripRecommendationToJson(_TripRecommendation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tripId': instance.tripId,
      'travelerId': instance.travelerId,
      'ruleId': instance.ruleId,
      'category': instance.category,
      'status': instance.status,
      'titleAr': instance.titleAr,
      'reasonAr': instance.reasonAr,
      'sourceName': instance.sourceName,
      'generatedAt': instance.generatedAt.toIso8601String(),
    };
