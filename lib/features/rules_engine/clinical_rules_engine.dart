import '../../models/trip.dart';
import '../../models/recommendation.dart';

class ClinicalRulesEngine {
  
  /// Simulates evaluating clinical rules based on destination, duration, and traveler.
  List<TripRecommendation> evaluateTrip(Trip trip) {
    List<TripRecommendation> recommendations = [];
    final now = DateTime.now();
    
    // Example Rule 1: Malaria assessment based on specific region (Labuan Bajo)
    bool hasLabuanBajo = trip.destinations.any((d) => d.cityName == 'Labuan Bajo' || d.cityName == 'Komodo');
    
    if (hasLabuanBajo) {
      for (var traveler in trip.travelers) {
        recommendations.add(
          TripRecommendation(
            id: 'rec_malaria_${traveler.id}',
            tripId: trip.id,
            travelerId: traveler.id,
            ruleId: 'rule_malaria_id_01',
            category: 'malaria',
            status: 'needs_attention',
            titleAr: 'الوقاية الدوائية من الملاريا',
            reasonAr: 'بسبب إضافة وجهة Labuan Bajo الجغرافية، يوصى بتقييم طبي لأدوية الوقاية من الملاريا.',
            sourceName: 'CDC Yellow Book - 2026',
            generatedAt: now,
          ),
        );
      }
    }

    // Example Rule 2: Routine/Travel vaccines based on country (Indonesia)
    bool hasIndonesia = trip.destinations.any((d) => d.countryCode == 'ID');
    
    if (hasIndonesia) {
      for (var traveler in trip.travelers) {
        recommendations.add(
          TripRecommendation(
            id: 'rec_hepa_${traveler.id}',
            tripId: trip.id,
            travelerId: traveler.id,
            ruleId: 'rule_hepa_id_02',
            category: 'vaccine',
            status: 'recommended',
            titleAr: 'التهاب الكبد A',
            reasonAr: 'موصى به لمعظم المسافرين إلى إندونيسيا.',
            sourceName: 'CDC Yellow Book - 2026',
            generatedAt: now,
          ),
        );
        
        // Rule 2.1: Typhoid if rural or long duration
        bool isRural = trip.activities.contains('rural') || trip.activities.contains('hiking');
        bool isLong = trip.endDate.difference(trip.startDate).inDays > 14;
        
        if (isRural || isLong) {
          recommendations.add(
            TripRecommendation(
              id: 'rec_typhoid_${traveler.id}',
              tripId: trip.id,
              travelerId: traveler.id,
              ruleId: 'rule_typhoid_id_03',
              category: 'vaccine',
              status: 'recommended',
              titleAr: 'التيفوئيد',
              reasonAr: 'ينصح به للرحلات الطويلة أو في المناطق الريفية.',
              sourceName: 'CDC Yellow Book - 2026',
              generatedAt: now,
            ),
          );
        }
      }
    }

    return recommendations;
  }
}
