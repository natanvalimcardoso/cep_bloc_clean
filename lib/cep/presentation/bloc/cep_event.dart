abstract class CepEvent {
  const CepEvent();
}

class GetCep extends CepEvent {
  const GetCep(this.cep);
  final String cep;
}
