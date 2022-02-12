import 'package:flutter/cupertino.dart';

class Question{
  late String questionText;
  late bool questionAnswer;

  Question(String questionText, bool questionAnswer){
    this.questionText = questionText;
    this.questionAnswer = questionAnswer;
  }
}

class QuestionMake{
    final List<Question> _questionBank = [  //set private questionBank so that anyone can't change the answer in the main class
    Question('Dhaka is the capital of Bangladesh', true),
    Question("Noakhali is a independent country", false),
    Question("Comilla is the division of Bangladesh", false),
    Question("Kishoreganj is a district of Bangladesh", true),
  ];
   String getQuestionText(int questionNumber){
     return _questionBank[questionNumber].questionText;
   }
   bool getQuestionAns(int questinNumber){
     return _questionBank[questinNumber].questionAnswer;
   }
}

