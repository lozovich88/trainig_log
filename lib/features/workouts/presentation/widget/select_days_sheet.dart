import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/app_button.dart';
import 'package:training_log/core/design_system/widgets/app_navigation.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';
import 'package:training_log/core/extensions/weekday_extension.dart';

class SelectDaysSheet extends HookWidget {
  const SelectDaysSheet({
    required this.initialSelected,
    required this.onSave,
    super.key,
  });

  final List<int> initialSelected;
  final Future<void> Function(List<int> weekdays) onSave;

  static Future<void> show(
    BuildContext context, {
    required List<int> initialSelected,
    required Future<void> Function(List<int> weekdays) onSave,
  }) {
    return AppBottomSheet.show<void>(
      context,
      reserveBottomNavSpace: true,
      builder: (context) => SelectDaysSheet(
        initialSelected: initialSelected,
        onSave: onSave,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selected = useState<Set<int>>(initialSelected.toSet());
    final weekdays = [
      DateTime.monday,
      DateTime.tuesday,
      DateTime.wednesday,
      DateTime.thursday,
      DateTime.friday,
      DateTime.saturday,
      DateTime.sunday,
    ];

    return AppBottomSheet(
      title: context.l10n.workoutsSelectDays,
      reserveBottomNavSpace: true,
      actions: Row(
        children: [
          Expanded(
            child: AppSecondaryButton(
              label: context.l10n.workoutsCancel,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const SizedBox(width: AppDimens.size12),
          Expanded(
            child: AppPrimaryButton(
              label: context.l10n.workoutsSave,
              onPressed: () async {
                await onSave(selected.value.toList()..sort());
                if (context.mounted) {
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: weekdays
            .map(
              (weekday) => CheckboxListTile(
                value: selected.value.contains(weekday),
                title: Text(weekday.localizedName(context)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppDimens.size12),
                ),
                onChanged: (checked) {
                  final updated = Set<int>.from(selected.value);
                  if (checked ?? false) {
                    updated.add(weekday);
                  } else {
                    updated.remove(weekday);
                  }
                  selected.value = updated;
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
