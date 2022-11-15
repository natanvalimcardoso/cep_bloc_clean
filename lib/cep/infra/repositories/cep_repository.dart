// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../domain/model/cep_model.dart';
import '../../domain/repositories/cep_repository.dart';
import '../datasource/cep_datasource.dart';

class CepRepositoryImpl implements CepRepository {
  final CepDatasource cepDatasource;

  CepRepositoryImpl(this.cepDatasource);

  @override
  Future<CepModel> receiveCep(String cep) async {
    try {
      return cepDatasource.getCep(cep);
    } catch (e) {
      return throw(e.toString());
    }
  }
}
