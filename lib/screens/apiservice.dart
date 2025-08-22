import 'dart:convert';
import 'package:http/http.dart' as http;

class Apiservice {
  final String baseUrl = "https://reqres.in/api";

  //LOGIN
  Future<String> login(String email, String password) async {
    final Response = await http.post(
      Uri.parse("$baseUrl/login"),
      headers: {"Content-Type": "application/json"},
      body: json.encode({
        "email": email,
        "password": password
      }),
    );

    print("Status Code : ${Response.statusCode}");
    print("Response Body : ${Response.body}");
    
    if (Response.statusCode == 200){
      final data = json.decode(Response.body);
      return data["token"];
    }else {
      final error = json.decode(Response.body);
      throw Exception(error["error"] ?? "Login gagal");
    }
  }

  //GET USER
  Future<Map<String, dynamic>> dapatkanUser( int id ) async {
    final response = await http.get(
      Uri.parse("$baseUrl/users/$id")
    );

    print("Status Code : ${response.statusCode}");
    print("Response Body : ${response.body}");

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data["data"];
    } else {
      throw Exception("Gagal mendapatkan data user");
    }
  }
}