import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_destination.freezed.dart';
part 'trip_destination.g.dart';

@freezed
abstract class TripDestination with _$TripDestination {
  const factory TripDestination({
    required String id,
    required String countryCode,
    String? regionId,
    String? cityName,
    required int sequenceOrder,
    required DateTime arrivalDate,
    required DateTime departureDate,
  }) = _TripDestination;

  factory TripDestination.fromJson(Map<String, dynamic> json) =>
      _$TripDestinationFromJson(json);
}
