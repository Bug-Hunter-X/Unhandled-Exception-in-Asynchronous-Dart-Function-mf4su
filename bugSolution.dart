```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Process jsonData
        print('Data fetched successfully: $jsonData');
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
      }
    } else {
      print('Request failed with status: ${response.statusCode}. Response body: ${response.body}');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}
```