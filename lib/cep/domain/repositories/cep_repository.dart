
import '../model/cep_model.dart';

abstract class CepRepository {
  Future<CepModel> receiveCep(String cep);
}