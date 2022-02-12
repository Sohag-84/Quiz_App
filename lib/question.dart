import 'package:flutter/cupertino.dart';

class Question{
  late String questionText;
  late bool questionAnswer;

  Question(String questionText, bool questionAnswer){
    this.questionText = questionText;
    this.questionAnswer = questionAnswer;
  }
}

int _questionNumber = 0;

class QuestionMake{
    final List<Question> _questionBank = [  //set private questionBank so that anyone can't change the answer in the main class
    Question('Dhaka is the capital of Bangladesh', true),
    Question("Noakhali is a independent country", false),
    Question("Comilla is the division of Bangladesh", false),
    Question("Kishoreganj is a district of Bangladesh", true),
  ];


    void nextQuestion(){
      if(_questionNumber <_questionBank.length-1){
        _questionNumber++;
      }
    }

   String getQuestionText(){
     return _questionBank[_questionNumber].questionText;
   }
   bool getQuestionAns(){
     return _questionBank[_questionNumber].questionAnswer;
   }
}

