import 'package:flutter/material.dart';
import '../../../core/design_system/colors.dart';
import '../../rules_engine/what_changed_engine.dart';

class WhatChangedBottomSheet extends StatelessWidget {
  final TripChangeInsight insight;

  const WhatChangedBottomSheet({super.key, required this.insight});

  static void show(BuildContext context, TripChangeInsight insight) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => WhatChangedBottomSheet(insight: insight),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.statusOrange.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.update, color: AppColors.statusOrange),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    insight.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('السبب:', style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(insight.reason, style: const TextStyle(color: AppColors.textPrimary)),
                  const Divider(height: 24),
                  const Text('النتيجة:', style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(insight.description, style: const TextStyle(color: AppColors.textPrimary)),
                  const Divider(height: 24),
                  Text('المسافرين المتأثرين: ${insight.affectedTravelersCount}', style: const TextStyle(color: AppColors.textSecondary)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('حسناً، فهمت'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
