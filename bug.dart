```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with 'response'
    } else {
      // Error handling (this is missing in the original code)
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Exception handling (this is missing in the original code)
    print('Error fetching data: $e');
    // Consider rethrowing or handling the exception more gracefully
  }
}
```