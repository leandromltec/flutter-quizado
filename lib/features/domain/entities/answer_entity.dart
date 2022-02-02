import 'package:equatable/equatable.dart';

class AnswerEntity extends Equatable {
  final int idAnswer;
  final String answer;

  AnswerEntity(this.idAnswer, this.answer);

  @override
  List<Object?> get props => [idAnswer, answer];
}
