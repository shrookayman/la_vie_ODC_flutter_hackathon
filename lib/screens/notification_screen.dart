import 'package:flutter/material.dart';
import 'package:la_vie/components/notification.dart';
import 'package:la_vie/quiz/questions.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late Quiz quiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:
            Column(
              children: [
                Center(
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    NotificationRow(
                        image: 'assets/images/profile1.jpg',
                        text: 'Joy Arnold left 6 comments on Your Post'),
                    Divider(
                      color: Colors.grey[200],
                      thickness: 2,
                    ),
                    NotificationRow(
                        image: 'assets/images/profile2.jpg',
                        text: 'Dennis Nedry commented on your post'),
                    Divider(
                      color: Colors.grey[200],
                      thickness: 2,
                    ),
                    NotificationRow(
                        image: 'assets/images/profile3.jpg',
                        text: 'John Hammond created compliance report'),
                    Divider(
                      color: Colors.grey[200],
                      thickness: 2,
                    ),
                    NotificationRow(
                        image: 'assets/images/profile1.jpg',
                        text: 'Joy Arnold left 6 comments on Your Post'),
                    Divider(
                      color: Colors.grey[200],
                      thickness: 2,
                    ),
                    NotificationRow(
                        image: 'assets/images/profile2.jpg',
                        text: 'Joy Arnold left 6 comments on Your Post'),
                    Divider(
                      color: Colors.grey[200],
                      thickness: 2,
                    ),
                    NotificationRow(
                        image: 'assets/images/profile3.jpg',
                        text: 'Joy Arnold left 6 comments on Your Post'),
                    Divider(
                      color: Colors.grey[200],
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Center(
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                'assets/images/logo2.jpg',
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'you have a weekly quiz',
                          style: TextStyle(

                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Quiz()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: Text('start',style: TextStyle(color: Color(0xFF1ABC00),fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )

        )
    );
  }
}
