import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation.freezed.dart';
part 'recommendation.g.dart';

@freezed
abstract class TripRecommendation with _$TripRecommendation {
  const factory TripRecommendation({
    required String id,
    required String tripId,
    required String travelerId,
    required String ruleId,
    required String category,
    required String status,
    required String titleAr,
    required String reasonAr,
    required String sourceName,
    required DateTime generatedAt,
  }) = _TripRecommendation;

  factory TripRecommendation.fromJson(Map<String, dynamic> json) =>
      _$TripRecommendationFromJson(json);
}
