import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as https;

import '../domain/model/cep_model.dart';
import '../infra/datasource/cep_datasource.dart';

class CepApi implements CepDatasource {
  @override
  Future<CepModel> getCep(String cep) async {
    final response = await https.get(
      Uri.parse(
        'https://viacep.com.br/ws/$cep/json/',
      ),
    );

    try {
      final json = jsonDecode(response.body);
      final cepModel = CepModel.fromMap(json);
      return cepModel;
    } catch (e) {
      return throw (e.toString());
    }
  }
}

void main() {
  final cep = CepApi().getCep('95560000');
  log(cep.toString());
}
