import 'package:intl/intl.dart';

enum WeekDay {
  today,
  tomorrow,
  dayAfterTomorrow,
  threeDaysLater,
  fourDaysLater,
  fiveDaysLater,
  sixDaysLater,
}

extension WeekDayExtension on WeekDay {
  String get name {
    switch (this) {
      case WeekDay.today:
        return DateFormat('EEEE').format(DateTime.now());
      case WeekDay.tomorrow:
        return DateFormat('EEEE').format(DateTime.now().add(Duration(days: 1)));
      case WeekDay.dayAfterTomorrow:
        return DateFormat('EEEE').format(DateTime.now().add(Duration(days: 2)));
      case WeekDay.threeDaysLater:
        return DateFormat('EEEE').format(DateTime.now().add(Duration(days: 3)));
      case WeekDay.fourDaysLater:
        return DateFormat('EEEE').format(DateTime.now().add(Duration(days: 4)));
      case WeekDay.fiveDaysLater:
        return DateFormat('EEEE').format(DateTime.now().add(Duration(days: 5)));
      case WeekDay.sixDaysLater:
        return DateFormat('EEEE').format(DateTime.now().add(Duration(days: 6)));
      default:
        return '';
    }
  }
}
