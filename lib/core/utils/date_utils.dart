abstract final class DateUtils {
  static DateTime normalize(DateTime date) {
    final local = date.toLocal();
    return DateTime(local.year, local.month, local.day);
  }

  static bool isSameDay(DateTime first, DateTime second) {
    final firstLocal = first.toLocal();
    final secondLocal = second.toLocal();
    return firstLocal.year == secondLocal.year &&
        firstLocal.month == secondLocal.month &&
        firstLocal.day == secondLocal.day;
  }
}
