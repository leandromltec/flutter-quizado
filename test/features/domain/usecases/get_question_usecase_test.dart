//Inicia os testes
import 'package:appquiz/core/erros/failure.dart';
import 'package:appquiz/core/usecase/usecase.dart';
import 'package:appquiz/features/domain/entities/answer_entity.dart';
import 'package:appquiz/features/domain/entities/question_entity.dart';
import 'package:appquiz/features/domain/respositories/question_repository.dart';
import 'package:appquiz/features/domain/usecases/get_question_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockQuestionRepository extends Mock implements IQuestionRepository {}

void main() {
  late GetQuestionUsecase usecase;
  late IQuestionRepository repository;

  List<AnswerEntity> list = [AnswerEntity(answer: "teste", idAnswer: 4)];

  final tQuestion = QuestionEntity(
      question: "Pergunta", idQuestionAnswer: 3, listAnswer: list);

  final tNoParams = NoParams();

  //Validado antes da função test
  setUp(() {
    repository = MockQuestionRepository();
    usecase = GetQuestionUsecase(repository);
  });

  //Descrição caso o teste passe nos testes
  //body - resposta a ser recebida
  //Right - resposta de sucesso
  test("pergunta retornada", () async {
    when(() => repository.getQuestion())
        .thenAnswer((_) async => Right<Failure, QuestionEntity>(tQuestion));
    final result = await usecase(tNoParams);

    //Espera o resultado e que seja
    expect(result, Right(tQuestion));
  });
}
