import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';

class PreparationTimelineScreen extends StatelessWidget {
  const PreparationTimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('خط رحلتك للاستعداد'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          _buildTimelineNode(
            context,
            timeLabel: 'اليوم',
            title: 'راجع تطعيمات محمد',
            isCompleted: true,
          ),
          _buildTimelineNode(
            context,
            timeLabel: 'خلال هذا الأسبوع',
            title: 'راجع لقاحات السفر الموصى بها',
            isCompleted: false,
            isActive: true,
          ),
          _buildTimelineNode(
            context,
            timeLabel: 'قبل السفر بـ14 يوم',
            title: 'جهز الأدوية والمستلزمات',
            isCompleted: false,
          ),
          _buildTimelineNode(
            context,
            timeLabel: 'قبل السفر بـ7 أيام',
            title: 'راجع تحديثات الوجهة',
            isCompleted: false,
          ),
          _buildTimelineNode(
            context,
            timeLabel: 'قبل السفر بـ3 أيام',
            title: 'أصبحت توقعات الطقس أكثر دقة',
            isCompleted: false,
          ),
          _buildTimelineNode(
            context,
            timeLabel: 'يوم السفر',
            title: 'الأدوية، الوثائق، التأمين',
            isCompleted: false,
            isLast: true,
          ),
        ],
      ),
    );
  }

  Widget _buildTimelineNode(BuildContext context, {
    required String timeLabel,
    required String title,
    required bool isCompleted,
    bool isActive = false,
    bool isLast = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 24,
              height: 24,
              margin: const EdgeInsets.only(top: 4, right: 12, left: 16),
              decoration: BoxDecoration(
                color: isCompleted ? AppColors.primary : (isActive ? AppColors.statusOrange : AppColors.surface),
                shape: BoxShape.circle,
                border: Border.all(
                  color: isCompleted ? AppColors.primary : (isActive ? AppColors.statusOrange : Colors.grey.shade400),
                  width: 2,
                ),
              ),
              child: isCompleted ? const Icon(Icons.check, size: 16, color: Colors.white) : null,
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 60,
                color: isCompleted ? AppColors.primary : Colors.grey.shade300,
                margin: const EdgeInsets.only(right: 4),
              ),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                timeLabel,
                style: TextStyle(
                  color: isCompleted || isActive ? AppColors.textPrimary : AppColors.textSecondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom: 24, top: 4),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: isActive ? AppColors.statusOrange : Colors.transparent),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(child: Text(title, style: Theme.of(context).textTheme.bodyLarge)),
                    if (isActive)
                      const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.statusOrange),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
