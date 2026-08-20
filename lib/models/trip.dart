import 'package:freezed_annotation/freezed_annotation.dart';
import 'trip_destination.dart';
import 'traveler_profile.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
abstract class Trip with _$Trip {
  const factory Trip({
    required String id,
    required String userId,
    String? title,
    required DateTime startDate,
    required DateTime endDate,
    @Default('planning') String status,
    @Default(0) int readinessScore,
    @Default([]) List<TripDestination> destinations,
    @Default([]) List<TravelerProfile> travelers,
    @Default([]) List<String> activities,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}
