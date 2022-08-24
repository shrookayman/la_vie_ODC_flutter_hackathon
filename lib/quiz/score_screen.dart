import 'package:flutter/material.dart';
import 'package:la_vie/screens/notification_screen.dart';


class ScoreScreen extends StatelessWidget {
  late final int score;
  
  ScoreScreen(this.score);




  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:   Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Score',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Total correct answers ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                          children: [
                            Text(
                              'Your final score is',
                              style: TextStyle(
                                  fontSize: 20.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Container(
                                width: 150,
                                height: 130,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1ABC00),
                                  shape: BoxShape.circle,

                                ),
                                child: Center(
                                  child: Text(
                                    '$score',
                                    style:  TextStyle(
                                        color: Colors.white,
                                        fontSize: 40.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextButton(
                        onPressed: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationScreen()),
                      );
                    },
                        child: Container(
                          width: 170,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF1ABC00)),
                              borderRadius: BorderRadius.circular(10)

                          ),
                          child: Center(
                            child: Text(
                                      'back',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                      ),

                            )
                          ),
                        )),
                  )

                ],

              ),

            ],

          ),

      ),

    );

  }


}
