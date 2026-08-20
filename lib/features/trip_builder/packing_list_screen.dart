import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';

class PackingListScreen extends StatefulWidget {
  const PackingListScreen({super.key});

  @override
  State<PackingListScreen> createState() => _PackingListScreenState();
}

class _PackingListScreenState extends State<PackingListScreen> {
  final Map<String, bool> _items = {
    'نسخ من الوصفات الطبية': true,
    'أدوية الملاريا (Labuan Bajo)': false,
    'محلول الجفاف (ORS)': false,
    'واقي شمس (مؤشر UV عالي)': true,
    'طارد حشرات (استوائي)': false,
    'مسكن ألم للأطفال (محمد وسارة)': true,
    'معلومات التأمين الصحي': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('شنطة الرحلة الصحية'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            color: AppColors.primary,
            width: double.infinity,
            child: const Text(
              'تم تخصيص هذه القائمة بناءً على وجهاتكم والطقس وأعمار المسافرين.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(24),
              itemCount: _items.length,
              itemBuilder: (context, index) {
                String key = _items.keys.elementAt(index);
                return _buildChecklistItem(key, _items[key]!);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChecklistItem(String title, bool isChecked) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: isChecked ? AppColors.primary.withOpacity(0.5) : Colors.transparent),
      ),
      child: CheckboxListTile(
        value: isChecked,
        onChanged: (val) {
          setState(() {
            _items[title] = val ?? false;
          });
        },
        activeColor: AppColors.primary,
        title: Text(
          title,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            color: isChecked ? AppColors.textSecondary : AppColors.textPrimary,
            fontWeight: isChecked ? FontWeight.normal : FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
