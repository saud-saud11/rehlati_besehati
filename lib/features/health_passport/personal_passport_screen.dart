import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';

class PersonalPassportScreen extends StatelessWidget {
  final String name;

  const PersonalPassportScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('خطة $name'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          _buildProfileHeader(context),
          const SizedBox(height: 32),
          Text('التطعيمات', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          _buildRecommendationCard(
            context,
            title: 'التهاب الكبد A',
            status: 'موصى به',
            statusColor: AppColors.statusOrange,
            description: 'يفضل استكماله قبل السفر.',
            source: 'CDC Yellow Book - current version',
            icon: Icons.vaccines,
          ),
          const SizedBox(height: 12),
          _buildRecommendationCard(
            context,
            title: 'التيفوئيد',
            status: 'موصى به',
            statusColor: AppColors.statusOrange,
            description: 'ينصح به للرحلات في المناطق الريفية.',
            source: 'CDC Yellow Book - current version',
            icon: Icons.vaccines,
          ),
          const SizedBox(height: 32),
          Text('الملاريا والحشرات', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          _buildRecommendationCard(
            context,
            title: 'الوقاية الدوائية من الملاريا',
            status: 'يحتاج انتباه',
            statusColor: AppColors.statusRed,
            description: 'بسبب وجهة Labuan Bajo، يوصى بتقييم طبي للأدوية الوقائية.',
            source: 'CDC Yellow Book - current version',
            icon: Icons.bug_report,
          ),
        ],
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: AppColors.primaryLight,
          child: Text(
            name[0],
            style: const TextStyle(fontSize: 32, color: AppColors.primary, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: Theme.of(context).textTheme.displayMedium),
            const Text('جاهزية 64% - باقي 3 مهام', style: TextStyle(color: AppColors.statusOrange)),
          ],
        )
      ],
    );
  }

  Widget _buildRecommendationCard(BuildContext context, {
    required String title,
    required String status,
    required Color statusColor,
    required String description,
    required String source,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: statusColor, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(status, style: TextStyle(color: statusColor, fontSize: 12, fontWeight: FontWeight.bold)),
              )
            ],
          ),
          const SizedBox(height: 12),
          Text(description, style: const TextStyle(color: AppColors.textPrimary)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('المصدر: $source', style: const TextStyle(fontSize: 10, color: AppColors.textSecondary)),
              InkWell(
                onTap: () {},
                child: const Text('ليش؟', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
              )
            ],
          )
        ],
      ),
    );
  }
}
