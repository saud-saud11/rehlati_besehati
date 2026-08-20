import '../../models/recommendation.dart';

class TripChangeInsight {
  final String title;
  final String description;
  final String reason;
  final int affectedTravelersCount;

  TripChangeInsight({
    required this.title,
    required this.description,
    required this.reason,
    required this.affectedTravelersCount,
  });
}

class WhatChangedEngine {
  
  /// Compares old recommendations with new recommendations to generate insights.
  List<TripChangeInsight> compare(
    List<TripRecommendation> oldRecs, 
    List<TripRecommendation> newRecs,
  ) {
    List<TripChangeInsight> insights = [];
    
    // Simple mock logic for demonstration
    // If a new malaria rule appears that wasn't there before
    bool hadMalaria = oldRecs.any((r) => r.category == 'malaria');
    bool hasMalaria = newRecs.any((r) => r.category == 'malaria');
    
    if (!hadMalaria && hasMalaria) {
      insights.add(
        TripChangeInsight(
          title: 'إضافة وجهة جديدة غيرت بعض الاستعدادات',
          description: 'تحتاج الرحلة إلى تقييم وقاية الملاريا.',
          reason: 'تغير مسار الرحلة الجغرافي (إضافة Labuan Bajo).',
          affectedTravelersCount: newRecs.where((r) => r.category == 'malaria').length,
        )
      );
    }
    
    // If a new typhoid rule appears due to duration change
    bool hadTyphoid = oldRecs.any((r) => r.titleAr == 'التيفوئيد');
    bool hasTyphoid = newRecs.any((r) => r.titleAr == 'التيفوئيد');
    
    if (!hadTyphoid && hasTyphoid) {
      insights.add(
        TripChangeInsight(
          title: 'تغيرت مدة الرحلة',
          description: 'أعدنا تقييم استعداداتكم تلقائياً. تمت إضافة توصية التيفوئيد.',
          reason: 'زادت مدة الرحلة عن 14 يوم.',
          affectedTravelersCount: newRecs.where((r) => r.titleAr == 'التيفوئيد').length,
        )
      );
    }

    return insights;
  }
}
