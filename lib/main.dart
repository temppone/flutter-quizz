import 'package:flutter/material.dart';
import 'package:udemy_course/questions.dart';
import 'package:udemy_course/result.dart';

main() => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  void _answer() {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  static const List<Map<String, Object>> _questions = [
    {
      "text": "Qual é sua cor favorita?",
      "answers": [
        {
          {
            "text": "Preto",
            "value": 10,
          },
          {
            "text": "Vermelho",
            "value": 10,
          },
          {
            "text": "Verde",
            "value": 10,
          },
          {
            "text": "Branco",
            "value": 10,
          }
        }
      ]
    },
    {
      "text": "Qual é o seu animal favorito?",
      "answers": [
        {
          "text": "Preto",
          "value": 10,
        },
        {
          "text": "Vermelho",
          "value": 10,
        },
        {
          "text": "Verde",
          "value": 10,
        },
        {
          "text": "Branco",
          "value": 10,
        }
      ]
    },
    {
      "text": "Qual é o seu doce favorito?",
      "answers": [
        {
          "text": "Preto",
          "value": 10,
        },
        {
          "text": "Vermelho",
          "value": 10,
        },
        {
          "text": "Verde",
          "value": 10,
        },
        {
          "text": "Branco",
          "value": 10,
        }
      ]
    },
  ];

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Perguntas"),
          ),
          body: hasSelectedQuestion
              ? Questions(
                  reply: _answer,
                  questions: _questions,
                  selectedQuestion: _selectedQuestion,
                )
              : const Result()),
    );
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
