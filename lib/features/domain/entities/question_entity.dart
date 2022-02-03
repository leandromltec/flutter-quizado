import 'package:appquiz/features/domain/entities/answer_entity.dart';
import 'package:equatable/equatable.dart';

class QuestionEntity extends Equatable {
  final String question;
  final int idQuestionAnswer;
  final List<AnswerEntity> listAnswer;

  QuestionEntity({
    required this.question,
    required this.idQuestionAnswer,
    required this.listAnswer
  });

  @override
  List<Object?> get props => [question, idQuestionAnswer];
}
