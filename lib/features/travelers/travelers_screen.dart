import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';

class TravelersScreen extends StatefulWidget {
  const TravelersScreen({super.key});

  @override
  State<TravelersScreen> createState() => _TravelersScreenState();
}

class _TravelersScreenState extends State<TravelersScreen> {
  int _adults = 2;
  int _children = 0;
  int _infants = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Text(
                'مين معك بالرحلة؟',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildCounterRow(
                      title: 'بالغين',
                      subtitle: '18+ سنة',
                      value: _adults,
                      onChanged: (val) {
                        if (val >= 1) setState(() => _adults = val);
                      },
                    ),
                    const Divider(height: 1, indent: 24, endIndent: 24),
                    _buildCounterRow(
                      title: 'أطفال',
                      subtitle: '2–17 سنة',
                      value: _children,
                      onChanged: (val) {
                        if (val >= 0) setState(() => _children = val);
                      },
                    ),
                    const Divider(height: 1, indent: 24, endIndent: 24),
                    _buildCounterRow(
                      title: 'رُضّع',
                      subtitle: 'أقل من سنتين',
                      value: _infants,
                      onChanged: (val) {
                        if (val >= 0) setState(() => _infants = val);
                      },
                    ),
                  ],
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('التالي'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCounterRow({
    required String title,
    required String subtitle,
    required int value,
    required Function(int) onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(color: AppColors.textSecondary),
              ),
            ],
          ),
          Row(
            children: [
              _buildCircleButton(
                icon: Icons.remove,
                onPressed: () => onChanged(value - 1),
                enabled: value > 0, // Simplified logic
              ),
              SizedBox(
                width: 40,
                child: Center(
                  child: Text(
                    '$value',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              _buildCircleButton(
                icon: Icons.add,
                onPressed: () => onChanged(value + 1),
                enabled: true,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCircleButton({
    required IconData icon,
    required VoidCallback onPressed,
    required bool enabled,
  }) {
    return InkWell(
      onTap: enabled ? onPressed : null,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: enabled ? AppColors.primary : Colors.grey.shade300,
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 20,
          color: enabled ? AppColors.primary : Colors.grey.shade300,
        ),
      ),
    );
  }
}
