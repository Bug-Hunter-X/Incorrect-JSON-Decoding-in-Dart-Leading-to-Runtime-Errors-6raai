```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Incorrect way to parse JSON, this will throw an error if the response isn't a valid JSON map
      final data = jsonDecode(response.body);
       // use this instead
      // final data = json.decode(response.body) as Map<String, dynamic>;
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