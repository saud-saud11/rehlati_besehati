import 'package:flutter/material.dart';
import '../../core/design_system/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class DateSelectionScreen extends StatefulWidget {
  const DateSelectionScreen({super.key});

  @override
  State<DateSelectionScreen> createState() => _DateSelectionScreenState();
}

class _DateSelectionScreenState extends State<DateSelectionScreen> {
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'متى رحلتكم؟',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          const SizedBox(height: 32),
          
          Expanded(
            child: Theme(
              data: Theme.of(context).copyWith(
                colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: AppColors.primary,
                  onPrimary: Colors.white,
                  surface: AppColors.surface,
                  onSurface: AppColors.textPrimary,
                ),
              ),
              child: CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 365)),
                onDateChanged: (date) {
                  setState(() {
                    if (_startDate == null || (_startDate != null && _endDate != null)) {
                      _startDate = date;
                      _endDate = null;
                    } else if (date.isBefore(_startDate!)) {
                      _startDate = date;
                    } else {
                      _endDate = date;
                    }
                  });
                },
              ),
            ),
          ),
          
          if (_startDate != null && _endDate != null)
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.background,
                border: Border(top: BorderSide(color: Colors.grey.shade200)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${_endDate!.difference(_startDate!).inDays} يوم',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                          ),
                          Text(
                            'باقي ${_startDate!.difference(DateTime.now()).inDays} يوم على الرحلة',
                            style: const TextStyle(color: AppColors.textSecondary),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.pop();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        ),
                        child: const Text('تأكيد'),
                      ),
                    ],
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
