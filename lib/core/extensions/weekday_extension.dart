import 'package:flutter/widgets.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';

extension WeekdayL10n on int {
  String localizedName(BuildContext context) {
    final l10n = context.l10n;
    return switch (this) {
      DateTime.monday => l10n.weekdayMonday,
      DateTime.tuesday => l10n.weekdayTuesday,
      DateTime.wednesday => l10n.weekdayWednesday,
      DateTime.thursday => l10n.weekdayThursday,
      DateTime.friday => l10n.weekdayFriday,
      DateTime.saturday => l10n.weekdaySaturday,
      DateTime.sunday => l10n.weekdaySunday,
      _ => '',
    };
  }
}
