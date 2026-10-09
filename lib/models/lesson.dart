class Skill {
  final String type;
  final String title;
  final String content;
  final List<String> questions;
  final List<String> answers;
  Skill({required this.type, required this.title, required this.content, required this.questions, required this.answers});
}

class Lesson {
  final String id;
  final String title;
  final String level;
  final List<Skill> skills;
  Lesson({required this.id, required this.title, required this.level, required this.skills});
}

class Level {
  final String code;
  final String name;
  final String description;
  final List<Lesson> lessons;
  Level({required this.code, required this.name, required this.description, required this.lessons});
}
