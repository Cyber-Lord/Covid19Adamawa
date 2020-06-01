import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class QuizHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizHomeState();
  }
}

class _QuizHomeState extends State<QuizHome> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': '1. Are you experiencing any of the following symptoms: ?\n \nA. Severe difficulty breathing? \nB. severe chest pain? \nC. Feeling confused?  \nD. Fainted or lost consciousness? ',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
       
      ]
    },
    {
      'questionText': '2. Do any of the following apply to you: ?\n \nA. I am 65 years old or older \nB. Autoimmune disorder diseases? \nC. I have a chronic health condition \nD. Currently treating my immune system',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'questionText': '3. Are you experiencing any of the following symptoms: \n \nA. Fever \nB. New or worsening cough \nC. Shortness of breath \nD. Sore throat \nE. Runny nose \nF. Diarrhea/Vomiting \nG. Loss of smell \nH. Tiredness \nI. Muscle aches',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'questionText': '4. Have you travelled to a place with COVID19 cases in the last 14 days?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'questionText': '5. Has someone you are in close contact with tested positive for COVID-19? ',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'questionText': '6. Are you in close contact with a person who either: \n \nA. Is sick with new respiratory symptoms? \nB. Recently travelled to area affected by COVID19? \n \n \nRespiratory symptoms can include fever, cough or difficulty breathing.',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ]
    },
  ];

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    
  }
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });

    _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
        ],
    );
  }
}
