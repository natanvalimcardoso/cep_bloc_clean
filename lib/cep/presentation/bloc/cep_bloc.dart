import 'dart:developer';

import '../../infra/repositories/cep_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/receive_cep_usecase.dart';
import '../../external/cep_api.dart';
import 'cep_event.dart';
import 'cep_state.dart';

class CepBloc extends Bloc<CepEvent, CepState> {
  CepBloc() : super(const CepInitialState()) {
    on<GetCep>(_showCep);
  }

  Future _showCep(GetCep event, emit) async {
    final usecase = ReceiveCepUsecaseImpl(CepRepositoryImpl(CepApi()));
    emit(const CepLoadingState());
    try {
      final cep = await usecase.call(event.cep);
      emit(CepLoadedState(cepModel: cep));
    } catch (e) {
      log(e.toString());
      emit(const CepErrorState('Erro do natan'));
    }
  }
}
