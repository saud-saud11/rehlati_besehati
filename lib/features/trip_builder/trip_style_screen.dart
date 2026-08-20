import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'trip_provider.dart';

class TripStyleScreen extends ConsumerStatefulWidget {
  const TripStyleScreen({super.key});

  @override
  ConsumerState<TripStyleScreen> createState() => _TripStyleScreenState();
}

class _TripStyleScreenState extends ConsumerState<TripStyleScreen> {
  final List<Map<String, dynamic>> _styles = [
    {'title': 'فنادق ومنتجعات', 'icon': '🏨', 'selected': true},
    {'title': 'مدن وتسوق', 'icon': '🏙️', 'selected': false},
    {'title': 'جزر وشواطئ', 'icon': '🏝️', 'selected': false},
    {'title': 'هايكنق', 'icon': '🥾', 'selected': false},
    {'title': 'تخييم', 'icon': '🏕️', 'selected': false},
    {'title': 'غابات', 'icon': '🌳', 'selected': false},
    {'title': 'مناطق ريفية', 'icon': '🌾', 'selected': false},
    {'title': 'حيوانات وحياة برية', 'icon': '🐒', 'selected': false},
    {'title': 'غوص', 'icon': '🤿', 'selected': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
            child: Text(
              'كيف بتكون رحلتكم؟',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(24),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.2,
              ),
              itemCount: _styles.length,
              itemBuilder: (context, index) {
                final style = _styles[index];
                return InkWell(
                  onTap: () {
                    setState(() {
                      style['selected'] = !style['selected'];
                    });
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: style['selected'] ? AppColors.primaryLight : AppColors.surface,
                      border: Border.all(
                        color: style['selected'] ? AppColors.primary : Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          style['icon'],
                          style: const TextStyle(fontSize: 40),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          style['title'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: style['selected'] ? AppColors.primaryDark : AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final selectedStyles = _styles
                      .where((s) => s['selected'] == true)
                      .map((s) => s['title'] as String)
                      .toList();
                  ref.read(tripProvider.notifier).setStyles(selectedStyles);
                  context.push('/trip-preparation');
                },
                child: const Text('أنشئ الرحلة'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
