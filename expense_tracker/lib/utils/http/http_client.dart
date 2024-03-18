// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class PHttpHelper {
//   static const String _baseUrl = 'http://localhost:3000/api/user'; // Replace with your API base URL

//   // Helper method to make a GET request
//   static Future<Map<String, dynamic>> get(String endpoint) async {
//     final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
//     return _handleResponse(response);
//   }

//   // Helper method to make a POST request
//   static Future<Map<String, dynamic>> post(
//        dynamic data) async {
//     final url = Uri.parse('http://192.168.1.9/api/user/sendotp');
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode(data),
//     );
//     return _handleResponse(response);
//   }

//   // Helper method to make a PUT request
//   static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
//     final response = await http.put(
//       Uri.parse('$_baseUrl/$endpoint'),
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode(data),
//     );
//     return _handleResponse(response);
//   }

//   // Helper method to make a DELETE request
//   static Future<Map<String, dynamic>> delete(String endpoint) async {
//     final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
//     return _handleResponse(response);
//   }

//   // Handle the HTTP response
//   static Map<String, dynamic> _handleResponse(http.Response response) {
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to load data: ${response.statusCode}');
//     }
//   }
// }
