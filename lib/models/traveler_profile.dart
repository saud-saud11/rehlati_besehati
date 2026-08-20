import 'package:freezed_annotation/freezed_annotation.dart';

part 'traveler_profile.freezed.dart';
part 'traveler_profile.g.dart';

@freezed
abstract class TravelerProfile with _$TravelerProfile {
  const factory TravelerProfile({
    required String id,
    required String userId,
    required String name,
    required DateTime dateOfBirth,
    required String sex,
    @Default(false) bool isPregnant,
    @Default(false) bool isBreastfeeding,
  }) = _TravelerProfile;

  factory TravelerProfile.fromJson(Map<String, dynamic> json) =>
      _$TravelerProfileFromJson(json);
}
