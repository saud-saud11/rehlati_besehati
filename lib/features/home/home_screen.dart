import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import '../../core/design_system/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isTravelMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _isTravelMode ? _buildTravelModeHero(context) : _buildHeroSection(context),
          ),
          if (!_isTravelMode)
            SliverToBoxAdapter(
              child: _buildPopularDestinations(context),
            ),
          if (_isTravelMode)
            SliverToBoxAdapter(
              child: _buildTravelModeInsights(context),
            ),
          const SliverPadding(padding: EdgeInsets.only(bottom: 100)),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            _isTravelMode = !_isTravelMode;
          });
        },
        child: const Icon(Icons.swap_horiz),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Stack(
      children: [
        // Background Hero Image
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.primary,
          ),
          child: CachedNetworkImage(
            imageUrl: 'https://images.unsplash.com/photo-1555400038-63f5ba517a47?q=80&w=2070&auto=format&fit=crop', // Bali inspiration
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.3),
            colorBlendMode: BlendMode.darken,
          ),
        ),
        
        // Content
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  'صباح الخير 👋',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'وين وجهتكم\nالجاية؟',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 32),
                
                // Search Card
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      _buildSearchRow(
                        icon: Icons.location_on_outlined,
                        title: 'الوجهة',
                        subtitle: 'ابحث عن دولة أو مدينة',
                        onTap: () {
                          context.push('/destination-search');
                        },
                      ),
                      const Divider(height: 1, indent: 56, endIndent: 24),
                      _buildSearchRow(
                        icon: Icons.calendar_month_outlined,
                        title: 'تاريخ الرحلة',
                        subtitle: 'الذهاب - العودة',
                        onTap: () {
                          context.push('/date-selection');
                        },
                      ),
                      const Divider(height: 1, indent: 56, endIndent: 24),
                      _buildSearchRow(
                        icon: Icons.people_outline,
                        title: 'المسافرون',
                        subtitle: 'أضف المسافرين',
                        onTap: () {
                          context.push('/travelers');
                        },
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              context.push('/trip-style');
                            },
                            child: const Text('جهّز رحلتي'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchRow({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Row(
          children: [
            Icon(icon, color: AppColors.primary, size: 28),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(
                    subtitle, 
                    style: const TextStyle(color: AppColors.textSecondary, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularDestinations(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'وجهات رائجة',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildDestinationCard('إندونيسيا', 'https://images.unsplash.com/photo-1572252009286-268acec5ca0a?q=80&w=2070&auto=format&fit=crop'),
                _buildDestinationCard('اليابان', 'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?q=80&w=2070&auto=format&fit=crop'),
                _buildDestinationCard('تايلاند', 'https://images.unsplash.com/photo-1552465011-b4e21bf6e79a?q=80&w=2039&auto=format&fit=crop'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDestinationCard(String title, String imageUrl) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: CachedNetworkImageProvider(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTravelModeHero(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.primary,
          ),
          child: CachedNetworkImage(
            imageUrl: 'https://images.unsplash.com/photo-1572252009286-268acec5ca0a?q=80&w=2070&auto=format&fit=crop', // Bali travel mode
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.3),
            colorBlendMode: BlendMode.darken,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  'صباح الخير من بالي ☀️',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 8),
                const Text('الثلاثاء 15 ديسمبر', style: TextStyle(color: Colors.white, fontSize: 16)),
                const SizedBox(height: 32),
                
                // Weather Card
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildWeatherItem('29°C', 'الحرارة'),
                      _buildWeatherItem('82%', 'الرطوبة'),
                      _buildWeatherItem('9', 'UV'),
                      _buildWeatherItem('65%', 'أمطار'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWeatherItem(String value, String label) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColors.primaryDark)),
        Text(label, style: const TextStyle(color: AppColors.textSecondary, fontSize: 12)),
      ],
    );
  }

  Widget _buildTravelModeInsights(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('اليوم في رحلتكم', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          _buildInsightCard(context, Icons.wb_sunny, 'مؤشر الأشعة فوق البنفسجية مرتفع اليوم.', AppColors.statusOrange),
          const SizedBox(height: 12),
          _buildInsightCard(context, Icons.bug_report, 'تأكدوا من طارد الحشرات قبل النشاط المسائي.', AppColors.primary),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.emergency),
              label: const Text('مساعدة أثناء السفر'),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.statusRed),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInsightCard(BuildContext context, IconData icon, String text, Color iconColor) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(width: 16),
          Expanded(child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      currentIndex: 0,
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
