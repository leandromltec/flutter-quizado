import 'package:equatable/equatable.dart';

class AnswerEntity extends Equatable {
  final int idAnswer;
  final String answer;

  AnswerEntity({required this.idAnswer, required this.answer});

  @override
  List<Object?> get props => [idAnswer, answer];
}
