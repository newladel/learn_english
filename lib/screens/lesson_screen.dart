import 'package:flutter/material.dart';
import '../models/lesson.dart';
import '../services/progress_service.dart';
import 'skill_screen.dart';

class LessonScreen extends StatelessWidget {
  final Lesson lesson;
  const LessonScreen({super.key, required this.lesson});

  IconData _icon(String type) {
    switch (type) {
      case 'nghe': return Icons.headphones;
      case 'noi': return Icons.mic;
      case 'doc': return Icons.menu_book;
      case 'viet': return Icons.edit;
      case 'dich': return Icons.translate;
      default: return Icons.circle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.title),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ...lesson.skills.map((s) => Card(
                child: ListTile(
                  leading: Icon(_icon(s.type), color: Colors.indigo),
                  title: Text(s.title),
                  subtitle: Text(s.type.toUpperCase()),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SkillScreen(skill: s))),
                ),
              )),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            icon: const Icon(Icons.check),
            label: const Text('Danh dau da hoan thanh bai nay'),
            onPressed: () async {
              await ProgressService.markDone(lesson.id);
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Da luu tien do!')),
                );
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
