
import '../../domain/model/cep_model.dart';

abstract class CepDatasource {
  Future<CepModel> getCep(String cep); 
}