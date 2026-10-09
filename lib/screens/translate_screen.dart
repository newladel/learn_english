import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import '../services/ai_service.dart';

class TranslateScreen extends StatefulWidget {
  const TranslateScreen({super.key});
  @override
  State<TranslateScreen> createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  final _controller = TextEditingController();
  final _tts = FlutterTts();
  String _result = '';
  bool _loading = false;

  Future<void> _translate() async {
    if (_controller.text.isEmpty) return;
    setState(() => _loading = true);
    final r = await AiService.translate(_controller.text);
    setState(() { _result = r; _loading = false; });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dich Anh - Viet'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          TextField(
            controller: _controller,
            maxLines: 4,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nhap cau tieng Anh...',
            ),
          ),
          const SizedBox(height: 12),
          Row(children: [
            ElevatedButton.icon(icon: const Icon(Icons.translate), label: const Text('Dich'), onPressed: _translate),
            const SizedBox(width: 12),
            ElevatedButton.icon(icon: const Icon(Icons.volume_up), label: const Text('Doc'), onPressed: () => _tts.speak(_controller.text)),
          ]),
          const SizedBox(height: 20),
          if (_loading) const CircularProgressIndicator(),
          if (_result.isNotEmpty)
            Card(color: Colors.teal.shade50,
                child: Padding(padding: const EdgeInsets.all(16), child: Text(_result, style: const TextStyle(fontSize: 16)))),
        ]),
      ),
    );
  }
}
