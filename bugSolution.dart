```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Do something with 'response'
      final data = response.body; // Example: Parse JSON response
      print('Data fetched successfully: $data');
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e) {
    // Handle exceptions during API call
    print('Error fetching data: $e');
    // Rethrow or handle the exception appropriately based on your application needs.
  }
}
```