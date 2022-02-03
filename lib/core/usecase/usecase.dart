import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../erros/failure.dart';

abstract class UseCase<Output, Input> {
  //Either - retorna um left(falha) ou rith (output de sucesso)
  //call - resume o método em usecase()
  Future<Either<Failure, Output>> call(Input params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
