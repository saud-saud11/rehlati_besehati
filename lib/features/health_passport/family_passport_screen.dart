import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';

class FamilyPassportScreen extends StatelessWidget {
  const FamilyPassportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('جواز صحة العائلة'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          _buildFamilyScoreHeader(context),
          const SizedBox(height: 32),
          Text('أفراد العائلة', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          _buildMemberCard(context, '👨', 'الأب', 'جاهزية 92%', 0.92, AppColors.statusGreen),
          const SizedBox(height: 12),
          _buildMemberCard(context, '👩', 'الأم', 'جاهزية 85%', 0.85, AppColors.statusGreen),
          const SizedBox(height: 12),
          _buildMemberCard(context, '👦', 'محمد', 'جاهزية 64%', 0.64, AppColors.statusOrange),
          const SizedBox(height: 12),
          _buildMemberCard(context, '👧', 'سارة', 'جاهزية 78%', 0.78, AppColors.statusYellow),
        ],
      ),
    );
  }

  Widget _buildFamilyScoreHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          const Icon(Icons.shield_outlined, color: Colors.white, size: 48),
          const SizedBox(height: 16),
          Text(
            'جاهزية العائلة 79%',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          const Text(
            'استعدوا معاً لرحلة صحية آمنة',
            style: TextStyle(color: AppColors.primaryLight),
          ),
        ],
      ),
    );
  }

  Widget _buildMemberCard(BuildContext context, String emoji, String name, String subtitle, double progress, Color color) {
    return InkWell(
      onTap: () {
        context.push('/personal-passport/$name');
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Row(
          children: [
            Text(emoji, style: const TextStyle(fontSize: 32)),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.titleLarge),
                  Text(subtitle, style: const TextStyle(color: AppColors.textSecondary)),
                ],
              ),
            ),
            SizedBox(
              width: 48,
              height: 48,
              child: CircularProgressIndicator(
                value: progress,
                strokeWidth: 4,
                backgroundColor: Colors.grey.shade100,
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
