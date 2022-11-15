import '../repositories/cep_repository.dart';

abstract class IReceiveCepUsecase {
  Future<void> call(String cep);
}

class ReceiveCepUsecaseImpl implements IReceiveCepUsecase {
  final CepRepository cepRepository;

  const ReceiveCepUsecaseImpl(this.cepRepository);

  @override
  Future<void> call(String cep) async => await cepRepository.receiveCep(cep);
}
