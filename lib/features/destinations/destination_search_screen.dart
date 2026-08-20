import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';

class DestinationSearchScreen extends StatefulWidget {
  const DestinationSearchScreen({super.key});

  @override
  State<DestinationSearchScreen> createState() => _DestinationSearchScreenState();
}

class _DestinationSearchScreenState extends State<DestinationSearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, String>> _destinations = [
    {'country': 'إندونيسيا', 'flag': '🇮🇩', 'code': 'ID'},
    {'country': 'اليابان', 'flag': '🇯🇵', 'code': 'JP'},
    {'country': 'تايلاند', 'flag': '🇹🇭', 'code': 'TH'},
    {'country': 'تركيا', 'flag': '🇹🇷', 'code': 'TR'},
    {'country': 'المالديف', 'flag': '🇲🇻', 'code': 'MV'},
    {'country': 'جنوب أفريقيا', 'flag': '🇿🇦', 'code': 'ZA'},
    {'country': 'البرازيل', 'flag': '🇧🇷', 'code': 'BR'},
    {'country': 'المملكة المتحدة', 'flag': '🇬🇧', 'code': 'GB'},
    {'country': 'فرنسا', 'flag': '🇫🇷', 'code': 'FR'},
    {'country': 'الولايات المتحدة', 'flag': '🇺🇸', 'code': 'US'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
        title: const Text('وين رايحين؟'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'ابحث عن دولة أو مدينة',
                prefixIcon: const Icon(Icons.search, color: AppColors.primary),
                filled: true,
                fillColor: AppColors.surface,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onChanged: (val) {
                setState(() {});
              },
            ),
          ),
          
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: _destinations.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final dest = _destinations[index];
                if (_searchController.text.isNotEmpty && 
                    !dest['country']!.contains(_searchController.text)) {
                  return const SizedBox.shrink();
                }
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  leading: Text(
                    dest['flag']!,
                    style: const TextStyle(fontSize: 32),
                  ),
                  title: Text(
                    dest['country']!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {
                    context.pop();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
