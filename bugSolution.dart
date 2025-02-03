```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correct way to parse JSON using type checking
      final data = json.decode(response.body) as Map<String, dynamic>;
      // Process the data
      print(data);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately (e.g., show an error message to the user)
  }
}
```