import '../repositories/cep_repository.dart';

abstract class IReceiveCepUsecase {
  Future call(String cep);
}

class ReceiveCepUsecaseImpl implements IReceiveCepUsecase {
  final CepRepository cepRepository;

  const ReceiveCepUsecaseImpl(this.cepRepository);

  @override
  Future call(String cep) async {
     return await cepRepository.receiveCep(cep);
  } 
}
