import 'package:flutter/material.dart';

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

  //create questions list
  List<String> questions = [
    'Dhaka is the capital of Bangladesh',
    'Noakhali is a independent country',
    'Comilla is a division of bangladesh'
  ];

  int questionNumber = 0;

  List<bool> answer = [true,false,false];

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
                  questions.elementAt(questionNumber),
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
                  //questionNumber++;
                 setState(() {
                   questionNumber++;
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
                  setState(() {
                    questionNumber++;
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


