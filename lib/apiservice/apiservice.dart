// ignore_for_file: avoid_print

import 'package:http/http.dart';
import 'dart:convert';

class ServiceApi {
  static Future<Map> postCreateUser(String usuario, String password) async {
    // Cambie proyecto-notas a proyecto-notas3
    String url = 'https://proyecto-notas3.azurewebsites.net/api/Usuarios';
    Response response = await post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"nUsuario": usuario, "contraseña": password}),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      print("Sirvio");
      return jsonDecode(response.body);
    }
    throw Exception(
        "Error llamando API - Status " + response.statusCode.toString());
  }

  static Future<Map> postCreateUser2(String usuario, String password) async {
    String url = 'https://proyecto-notas3.azurewebsites.net/api/Usuarios';
    Response response = await post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"nUsuario": usuario, "contraseña": password}),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      print("Sirvio");
      return jsonDecode(response.body);
    }

    if (response.statusCode == 409) {
      return {"status": 409};
    }

    print("Unknown status code: " + response.statusCode.toString());
    return {"status": response.statusCode};
  }

  static Future<List<dynamic>> getUserNotes(int usuarioId) async {
    String url =
        'https://proyecto-notas3.azurewebsites.net/api/NotasSegunUsuarioId/' +
            usuarioId.toString();
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      print("Sirvio");
      return jsonDecode(response.body);
    }
    throw Exception(
        "Error llamando API - Status " + response.statusCode.toString());
  }
}
