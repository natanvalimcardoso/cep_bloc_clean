
import 'package:equatable/equatable.dart';

import '../../domain/model/cep_model.dart';

abstract class CepState extends Equatable {
  const CepState();

  // Para indicar que houve mudanças nas propriedades
  @override
  List<Object> get props => [];
}

class CepInitialState extends CepState {
  const CepInitialState();
}

class CepLoadingState extends CepState {
  const CepLoadingState();
}

class CepLoadedState extends CepState {
  const CepLoadedState({required this.cepModel});
  final CepModel cepModel;
}

class CepErrorState extends CepState {
  const CepErrorState(this.message);
  final String message;
}
