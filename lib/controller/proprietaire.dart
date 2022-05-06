import 'dart:convert';

import 'package:http/http.dart' as http;

import '../env.dart';
import '../models/proprietaire.dart';

class ProprietaireController {
  Future<Proprietaire> createProprietaire(
      String nom, String prenom, String telephone, bool ifu) async {
    final response = await http.post(
      Uri.parse(Env.apiUrl + '/proprietaire'),
      headers: <String, String>{
        'content-type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        "nom": nom,
        "prenom": prenom,
        "telephone": telephone,
        "disposeIfu": ifu,
      }),
    );
    if (response.statusCode == 201) {
      return Proprietaire.fromJson(json.decode(response.body));
    } else {
      throw Exception(response.body);
    }
  }
}
