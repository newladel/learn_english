import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import '../models/lesson.dart';
import '../services/ai_service.dart';

class SkillScreen extends StatefulWidget {
  final Skill skill;
  const SkillScreen({super.key, required this.skill});
  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  final FlutterTts _tts = FlutterTts();
  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _listening = false;
  String _spoken = '';
  String _aiResult = '';

  @override
  void initState() {
    super.initState();
    _tts.setLanguage('en-US');
    _tts.setSpeechRate(0.45);
  }

  Future<void> _listen() async {
    if (!_listening) {
      final ok = await _speech.initialize();
      if (ok) {
        setState(() { _listening = true; _spoken = ''; });
        _speech.listen(localeId: 'en_US',
            onResult: (r) => setState(() => _spoken = r.recognizedWords));
      }
    } else {
      setState(() => _listening = false);
      _speech.stop();
      final res = await AiService.correctEnglish(_spoken);
      setState(() => _aiResult = res);
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.skill;
    return Scaffold(
      appBar: AppBar(
        title: Text(s.title),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(child: Padding(padding: const EdgeInsets.all(16), child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Noi dung', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Text(s.content, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 12),
              Row(children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.volume_up),
                  label: const Text('Nghe'),
                  onPressed: () => _tts.speak(s.content),
                ),
                const SizedBox(width: 12),
                ElevatedButton.icon(
                  icon: Icon(_listening ? Icons.stop : Icons.mic),
                  label: Text(_listening ? 'Dung' : 'Noi'),
                  onPressed: _listen,
                ),
              ]),
            ],
          ))),
          if (_spoken.isNotEmpty)
            Card(color: Colors.blue.shade50,
                child: Padding(padding: const EdgeInsets.all(16), child: Text('Ban noi: $_spoken'))),
          if (_aiResult.isNotEmpty)
            Card(color: Colors.green.shade50,
                child: Padding(padding: const EdgeInsets.all(16), child: Text('AI: $_aiResult'))),
          const SizedBox(height: 16),
          const Text('Cau hoi luyen tap:', style: TextStyle(fontWeight: FontWeight.bold)),
          ...s.questions.asMap().entries.map((e) => Card(
                child: ListTile(
                  title: Text(e.value),
                  trailing: TextButton(
                    child: const Text('Dap an'),
                    onPressed: () {
                      showDialog(context: context, builder: (_) => AlertDialog(
                        title: const Text('Dap an'),
                        content: Text(s.answers[e.key]),
                        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
                      ));
                    },
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
