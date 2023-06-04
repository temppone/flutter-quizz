import 'package:flutter/widgets.dart';
import 'package:udemy_course/answer.dart';
import 'package:udemy_course/question.dart';

class Questions extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function() reply;
  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  const Questions({
    super.key,
    required this.questions,
    required this.selectedQuestion,
    required this.reply,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>>? answers = hasSelectedQuestion
        ? (questions[selectedQuestion]['answers']
                as List<Set<Map<String, Object>>>)
            .expand((set) => set.map((map) => map))
            .toList()
        : [];

    List<Widget>? widgets = answers
        .map((answerValue) => Answer(answerValue['text'] as String, reply))
        .toList();

    return Column(
      children: [
        Question(questions[selectedQuestion]["text"] as String),
        ...widgets,
      ],
    );
  }
}
