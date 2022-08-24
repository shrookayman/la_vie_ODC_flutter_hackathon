import 'package:flutter/material.dart';
import 'package:la_vie/quiz/score_screen.dart';

import 'buttons.dart';


class Question {
  List questions = [
    'What is the user experience?',
    'What are the areas of the plant that produce carbohydrates called?',
    'Which tissue system covers outer surfaces of the plant body?',
    'What is the waxy coating that serves to protect and reduce water loss from the plant?',
    'What are leaf primordia?',

  ];
  List options = [
    ['The user experience is how the developer feels about a user.',
      'The user experience is how the user feels about interacting with or experiencing a product.',
      'The user experience is the attitude the UX designer has about a product.'],
    [
      'Source',
      'Sink',
      'Shoot System',
    ],
    [
      'Ground tissue system',
      'Vascular tissue system',
      'Dermal tissue system',
    ],
    [
      'Root hairs',
      'Cuticle',
      'Cork cells',
    ],
     [
       'the beginnings of new leaves',
       'side branches',
       'pores in the epidermis',
     ]

  ];

  List answer = [
    'The user experience is how the user feels about interacting with or experiencing a product.',
    'Source',
    'Dermal tissue system',
    'Cuticle',
    'the beginnings of new leaves',
  ];

}

var numOfQuestion = 0;
var ques = Question();
var score = 0;
var length=ques.questions.length;



class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Course Exam',style: TextStyle(fontSize: 20 ,color: Colors.black),),
          elevation: 0,
          centerTitle: true,

        ),
      body:
          Column(
            children: [

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,bottom: 10),
                    child: Row(
                      children: [
                        Text('Question',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        Text(
                            '${numOfQuestion+1}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFF1ABC00),
                              fontSize: 30,
                              fontWeight: FontWeight.bold

                            )
                        ),
                        Text('/${length}',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  ques.questions[numOfQuestion],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),

              Column(
                children: [
                  TextButton(onPressed: (){
                    if(ques.options[numOfQuestion][0]==ques.answer[numOfQuestion])
                    {
                      score++;
                    }
                    updateQuestion();
                  },
                      child: SelectedButton(ques.options[numOfQuestion][0],)
                  ),
                  TextButton(
                    onPressed: (){
                      if(ques.options[numOfQuestion][1]==ques.answer[numOfQuestion])
                      {
                        score++;
                      }
                      updateQuestion();
                    },
                    child: SelectedButton(ques.options[numOfQuestion][1],),

                  ),
                  TextButton(onPressed: (){
                    if(ques.options[numOfQuestion][2]==ques.answer[numOfQuestion])
                    {
                      score++;
                    }
                    updateQuestion();
                  },
                      child: SelectedButton(ques.options[numOfQuestion][2],)
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(onPressed: (){
                        reset();
                      }, child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFF1ABC00),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text('reset',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),),
                      TextButton(onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ScoreScreen( score)))
                            .then((value) => setState(() {}));
                      }, child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFF1ABC00),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text('Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),)

                    ],
                  )

                ],
              )
            ],
          )

    );
  }
  void reset(){
    setState((){
      Navigator.pop(context);
      numOfQuestion = 0;
      score=0;
    });
  }


  void updateQuestion() {
    setState(() {
      if (numOfQuestion == (length - 1)) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ScoreScreen( score)));
      } else {
        numOfQuestion++;
      }

    });
  }
}