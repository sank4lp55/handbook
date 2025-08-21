// lib/services/gemini_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GeminiService {
  static const String _baseUrl = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent';

  // Get API key from environment variables
  String get _apiKey {
    final key = dotenv.env['GEMINI_API_KEY'];
    if (key == null || key.isEmpty) {
      throw Exception('GEMINI_API_KEY not found in environment variables');
    }
    return key;
  }

  Future<String> getAnswer(String question, {bool isDart = false}) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl?key=$_apiKey'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'contents': [
            {
              'parts': [
                {
                  'text': _buildPrompt(question, isDart),
                }
              ]
            }
          ],
          'generationConfig': {
            'temperature': 0.7,
            'topK': 1,
            'topP': 1,
            'maxOutputTokens': 500,
          },
          'safetySettings': [
            {
              'category': 'HARM_CATEGORY_HARASSMENT',
              'threshold': 'BLOCK_MEDIUM_AND_ABOVE'
            },
            {
              'category': 'HARM_CATEGORY_HATE_SPEECH',
              'threshold': 'BLOCK_MEDIUM_AND_ABOVE'
            },
            {
              'category': 'HARM_CATEGORY_SEXUALLY_EXPLICIT',
              'threshold': 'BLOCK_MEDIUM_AND_ABOVE'
            },
            {
              'category': 'HARM_CATEGORY_DANGEROUS_CONTENT',
              'threshold': 'BLOCK_MEDIUM_AND_ABOVE'
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        // Check if response has candidates
        if (data['candidates'] != null && data['candidates'].isNotEmpty) {
          final candidate = data['candidates'][0];

          // Check if content exists and has parts
          if (candidate['content'] != null &&
              candidate['content']['parts'] != null &&
              candidate['content']['parts'].isNotEmpty) {
            return candidate['content']['parts'][0]['text'].toString().trim();
          }
        }

        throw Exception('No valid response content received');
      } else {
        final errorData = json.decode(response.body);
        throw Exception('Failed to get response: ${response.statusCode} - ${errorData['error']['message'] ?? 'Unknown error'}');
      }
    } catch (e) {
      throw Exception('Error getting answer: $e');
    }
  }

  String _buildPrompt(String question, bool isDart) {
    final systemPrompt = isDart
        ? 'You are a helpful assistant that provides clear, concise answers about Dart programming language. Focus on practical examples and best practices.'
        : 'You are a helpful assistant that provides clear, concise answers about Flutter development. Focus on practical examples and best practices.';

    return '$systemPrompt\n\nQuestion: $question';
  }
}