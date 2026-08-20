import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';

class BoardingPassScreen extends StatelessWidget {
  const BoardingPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildHeader(context),
                _buildSeparator(),
                _buildTripDetails(context),
                _buildSeparator(),
                _buildChecklist(context),
                _buildFooter(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const Icon(Icons.flight_takeoff, color: AppColors.primary, size: 48),
          const SizedBox(height: 16),
          Text('رحلتي بصحتي', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.primary)),
          const SizedBox(height: 8),
          const Text('بطاقة جاهزية الرحلة', style: TextStyle(color: AppColors.textSecondary)),
        ],
      ),
    );
  }

  Widget _buildTripDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
      child: Column(
        children: [
          Text('إندونيسيا 🇮🇩', style: Theme.of(context).textTheme.displayMedium),
          const SizedBox(height: 8),
          const Text('Bali • Lombok • Labuan Bajo', style: TextStyle(color: AppColors.textSecondary, fontSize: 16)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildInfoBlock('الذهاب', '12 AUG'),
              const Icon(Icons.arrow_forward_outlined, color: AppColors.primaryLight),
              _buildInfoBlock('العودة', '26 AUG'),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildInfoBlock('المسافرين', '4'),
              _buildInfoBlock('الجاهزية', '96%', color: AppColors.statusGreen),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoBlock(String label, String value, {Color? color}) {
    return Column(
      children: [
        Text(label, style: const TextStyle(color: AppColors.textSecondary, fontSize: 12)),
        const SizedBox(height: 4),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: color ?? AppColors.textPrimary)),
      ],
    );
  }

  Widget _buildChecklist(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          _buildCheckRow('التطعيمات تمت مراجعتها'),
          _buildCheckRow('أدوية الرحلة جاهزة'),
          _buildCheckRow('الطقس تمت مراجعته'),
          _buildCheckRow('معلومات الطوارئ محفوظة'),
        ],
      ),
    );
  }

  Widget _buildCheckRow(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: AppColors.statusGreen, size: 20),
          const SizedBox(width: 12),
          Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildSeparator() {
    return Row(
      children: [
        Container(
          width: 16,
          height: 32,
          decoration: const BoxDecoration(
            color: AppColors.primaryDark,
            borderRadius: BorderRadius.horizontal(right: Radius.circular(32)),
          ),
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  (constraints.constrainWidth() / 10).floor(),
                  (index) => const SizedBox(
                    width: 5,
                    height: 2,
                    child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey)),
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          width: 16,
          height: 32,
          decoration: const BoxDecoration(
            color: AppColors.primaryDark,
            borderRadius: BorderRadius.horizontal(left: Radius.circular(32)),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
      ),
      child: const Center(
        child: Text(
          'رحلة سعيدة ✈️',
          style: TextStyle(color: AppColors.primary, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
