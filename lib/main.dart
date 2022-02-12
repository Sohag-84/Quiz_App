import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: const Text("Quiz app"),
          centerTitle: true,
          leading: const Icon(Icons.menu),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizApp(),
          ),
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  List<Icon> score = [];

  QuestionMake questionMake = QuestionMake();
  //int questionNumber = 0; //it remove form here and make it private in question.dart file.so that after end of the question lis the app can't crash



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
         Expanded(
          flex: 5,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  questionMake.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
            )
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5,left: 12,right: 12,bottom: 15),
              child: FlatButton(
                color: Colors.yellow,
                child: const Text("True",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: (){
                  questionMake.getQuestionText();
                  bool rightAnswer = questionMake.getQuestionAns();
                  if(rightAnswer == true){
                    print("User got right answer");
                  }
                  else{
                    print("User got wrong answer");
                  }
                 setState(() {
                   questionMake.nextQuestion();
                     score.add(const Icon(Icons.check,color: Colors.green,));
                 });
                },
              ),
            ),
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5,left: 12,right: 12,bottom: 15),
              child: FlatButton(
                color: Colors.red,
                child: const Text("False",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: (){
                  bool rightAnswer = questionMake.getQuestionAns();
                  if(rightAnswer == false){
                    print("User got right answer");
                  }
                  else{
                    print("User got wrong answer");
                  }
                  setState(() {
                    questionMake.nextQuestion();
                    score.add(const Icon(Icons.close,color: Colors.red,));
                  });

                },
              ),
            ),
        ),
        Row(
          children: score
        )
      ],
    );
  }
}


