import 'package:appquiz/core/erros/failure.dart';
import 'package:appquiz/features/domain/entities/question_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IQuestionRepository {
  Future<Either<Failure, QuestionEntity>> getQuestion(String category);
}
