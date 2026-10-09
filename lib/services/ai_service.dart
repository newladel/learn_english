import 'dart:convert';
import 'package:http/http.dart' as http;

class AiService {
  static const String apiKey = 'YOUR_GEMINI_API_KEY';
  static const String endpoint =
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent';

  static Future<String> ask(String prompt) async {
    if (apiKey == 'YOUR_GEMINI_API_KEY') {
      return '(Chua cau hinh API key. Vao lib/services/ai_service.dart de them.)';
    }
    try {
      final res = await http.post(
        Uri.parse('$endpoint?key=$apiKey'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'contents': [
            {
              'parts': [
                {'text': prompt}
              ]
            }
          ]
        }),
      );
      final data = jsonDecode(res.body);
      return data['candidates'][0]['content']['parts'][0]['text'] ?? '';
    } catch (e) {
      return 'Loi AI: $e';
    }
  }

  static Future<String> correctEnglish(String text) =>
      ask('Sua loi tieng Anh sau va giai thich ngan gon: "$text"');

  static Future<String> translate(String text) =>
      ask('Dich sang tieng Viet: "$text"');
}
