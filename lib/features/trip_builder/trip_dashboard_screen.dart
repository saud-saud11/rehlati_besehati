import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';
import '../rules_engine/what_changed_engine.dart';
import 'widgets/what_changed_bottom_sheet.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'trip_provider.dart';

class TripDashboardScreen extends ConsumerWidget {
  const TripDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trip = ref.watch(tripProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context, trip),
          SliverToBoxAdapter(
            child: Column(
              children: [
                _buildWeatherStrip(context),
                const SizedBox(height: 16),
                _buildCountdown(context, trip),
                const SizedBox(height: 24),
                _buildReadinessCard(context),
                const SizedBox(height: 24),
                _buildFamilyPassportEntry(context),
                const SizedBox(height: 24),
                _buildFlagshipFeaturesGrid(context),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final insight = TripChangeInsight(
            title: 'إضافة وجهة جديدة غيرت بعض الاستعدادات',
            description: 'تحتاج الرحلة إلى تقييم وقاية الملاريا.',
            reason: 'تغير مسار الرحلة الجغرافي (إضافة Labuan Bajo).',
            affectedTravelersCount: 4,
          );
          WhatChangedBottomSheet.show(context, insight);
        },
        label: const Text('محاكاة تغيير الوجهة'),
        icon: const Icon(Icons.add_location_alt),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context, TripState trip) {
    final destination = trip.destination.isNotEmpty ? trip.destination : 'إندونيسيا';
    final dates = trip.dates.isNotEmpty ? trip.dates : '10–24 December • 14 يوم';
    final travelers = trip.travelers.isNotEmpty ? trip.travelers : '4 مسافرين';

    return SliverAppBar(
      expandedHeight: 250,
      pinned: true,
      backgroundColor: AppColors.primary,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => context.pop(),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: 'https://images.unsplash.com/photo-1555400038-63f5ba517a47?q=80&w=2070&auto=format&fit=crop',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.4),
              colorBlendMode: BlendMode.darken,
            ),
            Positioned(
              bottom: 24,
              left: 24,
              right: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$destination 🌍',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    trip.styles.isNotEmpty ? trip.styles.join(' • ') : 'رحلة استكشافية',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '$dates • $travelers',
                    style: const TextStyle(color: AppColors.sand, fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherStrip(BuildContext context) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.wb_sunny_outlined, color: AppColors.statusOrange),
              const SizedBox(width: 8),
              Text('29°C', style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
          const Text('موسم الأمطار', style: TextStyle(color: AppColors.textSecondary)),
          const Text('رطوبة 82%', style: TextStyle(color: AppColors.textSecondary)),
        ],
      ),
    );
  }

  Widget _buildCountdown(BuildContext context, TripState trip) {
    return Center(
      child: Text(
        'باقي 43 يوم ✈️', // This would be calculated from trip.dates in a real app
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
          color: AppColors.primary,
        ),
      ),
    );
  }

  Widget _buildReadinessCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('جاهزية الرحلة', style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 4),
                    const Text('باقي عليكم 4 أشياء قبل السفر', style: TextStyle(color: AppColors.textSecondary)),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(
                        value: 0.72,
                        strokeWidth: 6,
                        backgroundColor: Colors.grey.shade200,
                        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.statusGreen),
                      ),
                    ),
                    const Text('72%', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('شوف وش باقي'),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'مؤشر للاستعداد للرحلة وليس تصريحًا طبيًا للسفر.',
              style: TextStyle(fontSize: 10, color: AppColors.textSecondary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFamilyPassportEntry(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: InkWell(
        onTap: () {
          context.push('/family-passport');
        },
        borderRadius: BorderRadius.circular(24),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.family_restroom, color: AppColors.primary),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('جواز صحة الرحلة', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.primaryDark)),
                    const Text('جاهزية العائلة 79%', style: TextStyle(color: AppColors.primary)),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: AppColors.primary, size: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFlagshipFeaturesGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ميزات الرحلة', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1.1,
            children: [
              _buildFeatureTile(
                context,
                title: 'خريطة الرحلة\nالصحية',
                icon: Icons.map_outlined,
                onTap: () => context.push('/health-route-map'),
              ),
              _buildFeatureTile(
                context,
                title: 'خط رحلتك\nللاستعداد',
                icon: Icons.timeline,
                onTap: () => context.push('/preparation-timeline'),
              ),
              _buildFeatureTile(
                context,
                title: 'شنطة الرحلة\nالصحية',
                icon: Icons.backpack_outlined,
                onTap: () => context.push('/packing-list'),
              ),
              _buildFeatureTile(
                context,
                title: 'بطاقة جاهزية\nالرحلة',
                icon: Icons.airplane_ticket_outlined,
                onTap: () => context.push('/boarding-pass'),
                isHighlight: true,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureTile(BuildContext context, {
    required String title,
    required IconData icon,
    required VoidCallback onTap,
    bool isHighlight = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: isHighlight ? AppColors.primary : AppColors.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: isHighlight ? Colors.transparent : Colors.grey.shade200),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon, color: isHighlight ? Colors.white : AppColors.primary, size: 32),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: isHighlight ? Colors.white : AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      currentIndex: 1, // On Trips tab
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'الرئيسية'),
        BottomNavigationBarItem(icon: Icon(Icons.flight_takeoff), label: 'رحلاتي'),
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'استكشف'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: 'التنبيهات'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'حسابي'),
      ],
    );
  }
}
