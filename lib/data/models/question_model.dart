import 'package:appquiz/features/domain/entities/answer_entity.dart';
import 'package:appquiz/features/domain/entities/question_entity.dart';

class QuestionModel extends QuestionEntity {
  QuestionModel(
      String question, int idQuestionAnswer, List<AnswerEntity> listAnswer)
      : super(question, idQuestionAnswer, listAnswer);
}
