// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traveler_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TravelerProfile _$TravelerProfileFromJson(Map<String, dynamic> json) =>
    _TravelerProfile(
      id: json['id'] as String,
      userId: json['userId'] as String,
      name: json['name'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      sex: json['sex'] as String,
      isPregnant: json['isPregnant'] as bool? ?? false,
      isBreastfeeding: json['isBreastfeeding'] as bool? ?? false,
    );

Map<String, dynamic> _$TravelerProfileToJson(_TravelerProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'sex': instance.sex,
      'isPregnant': instance.isPregnant,
      'isBreastfeeding': instance.isBreastfeeding,
    };
