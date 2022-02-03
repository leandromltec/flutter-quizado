//Usecase fará chamada para o Respositório
//Dominio não tem conhecimento do mundo externo

import 'package:appquiz/features/domain/respositories/question_repository.dart';

import '../../../core/erros/failure.dart';
import '../../../core/usecase/usecase.dart';
import '../entities/question_entity.dart';
import 'package:dartz/dartz.dart';

class GetQuestionUsecase implements UseCase<QuestionEntity, NoParams> {
  final IQuestionRepository repository;

  GetQuestionUsecase(this.repository);

  @override
  Future<Either<Failure, QuestionEntity>> call(NoParams params) async {
    return await repository.getQuestion();
  }
}
