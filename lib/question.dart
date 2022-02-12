class Question{
  late String questionText;
  late bool questionAnswer;

  Question(String questionText, bool questionAnswer){
    this.questionText = questionText;
    this.questionAnswer = questionAnswer;
  }
}

class QuestionMake{
  List<Question> questionBank = [
    Question('Dhaka is the capital of Bangladesh', true),
    Question("Noakhali is a independent country", false),
    Question("Cummilla is the division of Bangladesh", false),
    Question("Kishoreganj is a district of Bangladesh", true),
  ];
}