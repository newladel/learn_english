import 'package:shared_preferences/shared_preferences.dart';

class ProgressService {
  static const _keyDone = 'done_lessons';
  static const _keyStreak = 'streak';
  static const _keyLastDay = 'last_day';

  static Future<Set<String>> getDoneLessons() async {
    final prefs = await SharedPreferences.getInstance();
    return (prefs.getStringList(_keyDone) ?? []).toSet();
  }

  static Future<void> markDone(String lessonId) async {
    final prefs = await SharedPreferences.getInstance();
    final list = (prefs.getStringList(_keyDone) ?? []).toSet();
    list.add(lessonId);
    await prefs.setStringList(_keyDone, list.toList());
    await _updateStreak();
  }

  static Future<int> getStreak() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyStreak) ?? 0;
  }

  static Future<void> _updateStreak() async {
    final prefs = await SharedPreferences.getInstance();
    final today = DateTime.now().toIso8601String().substring(0, 10);
    final last = prefs.getString(_keyLastDay);
    if (last == today) return;

    int streak = prefs.getInt(_keyStreak) ?? 0;
    if (last != null) {
      final lastDate = DateTime.parse(last);
      final diff = DateTime.now().difference(lastDate).inDays;
      streak = (diff == 1) ? streak + 1 : 1;
    } else {
      streak = 1;
    }
    await prefs.setInt(_keyStreak, streak);
    await prefs.setString(_keyLastDay, today);
  }
}
