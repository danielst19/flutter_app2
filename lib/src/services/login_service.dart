import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginService {

  Future<Map<String, dynamic>> login(String email, String password) async {

    final url = 'https://biolab.ga/biolab-api/oauth/token';

    final data = {
      "username": email,
      "password": password,
      "grant_type": "password",
      "client_id": "spring-security-oauth2-read-write-client"
    };

    final res = await http.post(
      url,
      body: data,
      headers: {
        'Authorization': 'Basic c3ByaW5nLXNlY3VyaXR5LW9hdXRoMi1yZWFkLXdyaXRlLWNsaWVudDpzcHJpbmctc2VjdXJpdHktb2F1dGgyLXJlYWQtd3JpdGUtY2xpZW50LXBhc3N3b3JkMTIzNA=='
      },
    );

    Map<String, dynamic> respuestaData = json.decode(res.body);
    print(respuestaData);
    return null;

  }
  
}