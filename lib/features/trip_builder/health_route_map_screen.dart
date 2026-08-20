import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';

class HealthRouteMapScreen extends StatelessWidget {
  const HealthRouteMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('خريطة الرحلة الصحية'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          _buildRouteNode(
            context,
            city: 'Bali',
            dates: '10 - 15 ديسمبر',
            status: 'آمن نسبياً - استعد للحشرات',
            isFirst: true,
          ),
          _buildRouteLine(),
          _buildRouteNode(
            context,
            city: 'Lombok',
            dates: '15 - 19 ديسمبر',
            status: 'استمرارية الحماية',
          ),
          _buildRouteLine(),
          _buildRouteNode(
            context,
            city: 'Labuan Bajo',
            dates: '19 - 24 ديسمبر',
            status: 'خطر ملاريا - يحتاج تقييم',
            hasAlert: true,
            alertMessage: 'إضافة هذه المنطقة أدت إلى إعادة تقييم الوقاية من الملاريا.',
            isLast: true,
          ),
        ],
      ),
    );
  }

  Widget _buildRouteLine() {
    return Container(
      margin: const EdgeInsets.only(right: 31), // Align with center of node circle
      height: 40,
      width: 2,
      color: Colors.grey.shade300,
      alignment: Alignment.centerRight,
    );
  }

  Widget _buildRouteNode(BuildContext context, {
    required String city,
    required String dates,
    required String status,
    bool hasAlert = false,
    String? alertMessage,
    bool isFirst = false,
    bool isLast = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(top: 4, right: 24, left: 16),
              decoration: BoxDecoration(
                color: hasAlert ? AppColors.statusRed : AppColors.primary,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.surface, width: 3),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(city, style: Theme.of(context).textTheme.titleLarge),
              Text(dates, style: const TextStyle(color: AppColors.textSecondary)),
              const SizedBox(height: 8),
              if (!hasAlert)
                Text(status, style: const TextStyle(color: AppColors.statusGreen, fontWeight: FontWeight.bold)),
              if (hasAlert) ...[
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(top: 8, bottom: 16),
                  decoration: BoxDecoration(
                    color: AppColors.statusRed.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.statusRed.withOpacity(0.2)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.warning_amber_rounded, color: AppColors.statusRed, size: 20),
                          const SizedBox(width: 8),
                          Text('هنا تغيرت خطتكم', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.statusRed)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(alertMessage ?? '', style: const TextStyle(color: AppColors.textPrimary)),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.surface,
                          foregroundColor: AppColors.statusRed,
                          elevation: 0,
                          side: BorderSide(color: AppColors.statusRed.withOpacity(0.5)),
                        ),
                        child: const Text('اعرف ليش'),
                      )
                    ],
                  ),
                )
              ]
            ],
          ),
        ),
      ],
    );
  }
}
