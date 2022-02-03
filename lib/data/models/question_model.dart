import 'package:appquiz/features/domain/entities/answer_entity.dart';
import 'package:appquiz/features/domain/entities/question_entity.dart';

class QuestionModel extends QuestionEntity {
  QuestionModel(
      {required String question,
      required int idQuestionAnswer,
      required List<AnswerEntity> listAnswer})
      : super(question: question, idQuestionAnswer: idQuestionAnswer, listAnswer: listAnswer);
}
