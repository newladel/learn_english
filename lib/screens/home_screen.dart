import 'package:flutter/material.dart';
import '../services/progress_service.dart';
import 'roadmap_screen.dart';
import 'translate_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int streak = 0;
  int done = 0;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final s = await ProgressService.getStreak();
    final d = await ProgressService.getDoneLessons();
    setState(() {
      streak = s;
      done = d.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoc Tieng Anh 0 -> Thanh thao'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(children: [
            _statCard('Streak', '$streak ngay', Colors.orange),
            const SizedBox(width: 12),
            _statCard('Da hoc', '$done bai', Colors.green),
          ]),
          const SizedBox(height: 24),
          _bigButton(
            icon: Icons.map,
            title: 'Lo trinh hoc',
            subtitle: 'A0 -> C1, du 5 ky nang',
            color: Colors.indigo,
            onTap: () async {
              await Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const RoadmapScreen()));
              _load();
            },
          ),
          const SizedBox(height: 12),
          _bigButton(
            icon: Icons.translate,
            title: 'Dich Anh - Viet',
            subtitle: 'Dich nhanh + doc to',
            color: Colors.teal,
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const TranslateScreen())),
          ),
        ],
      ),
    );
  }

  Widget _statCard(String label, String value, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.12),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(children: [
          Text(label, style: TextStyle(color: color, fontWeight: FontWeight.w600)),
          const SizedBox(height: 6),
          Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ]),
      ),
    );
  }

  Widget _bigButton({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
        child: Row(children: [
          Icon(icon, color: Colors.white, size: 36),
          const SizedBox(width: 16),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            Text(subtitle, style: const TextStyle(color: Colors.white70)),
          ])),
          const Icon(Icons.chevron_right, color: Colors.white),
        ]),
      ),
    );
  }
}
