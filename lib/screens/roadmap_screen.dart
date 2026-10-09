import 'package:flutter/material.dart';
import '../data/roadmap_data.dart';
import '../services/progress_service.dart';
import 'lesson_screen.dart';

class RoadmapScreen extends StatefulWidget {
  const RoadmapScreen({super.key});
  @override
  State<RoadmapScreen> createState() => _RoadmapScreenState();
}

class _RoadmapScreenState extends State<RoadmapScreen> {
  Set<String> done = {};

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final d = await ProgressService.getDoneLessons();
    setState(() => done = d);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lo trinh hoc'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: roadmap.length,
        itemBuilder: (_, i) {
          final level = roadmap[i];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ExpansionTile(
              title: Text('${level.code} - ${level.name}',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(level.description),
              children: level.lessons.map((lesson) {
                final isDone = done.contains(lesson.id);
                return ListTile(
                  leading: Icon(
                    isDone ? Icons.check_circle : Icons.radio_button_unchecked,
                    color: isDone ? Colors.green : Colors.grey,
                  ),
                  title: Text(lesson.title),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () async {
                    await Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LessonScreen(lesson: lesson)));
                    _load();
                  },
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
