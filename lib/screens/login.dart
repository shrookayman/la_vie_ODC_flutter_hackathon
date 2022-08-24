import 'package:flutter/material.dart';
import 'package:la_vie/components/text_field.dart';
import 'package:la_vie/screens/signup.dart';

import 'main_screen.dart';


class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}
class _MyLoginPageState extends State<MyLoginPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      body: Center(

          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Image.asset('assets/images/logo.png',
                  width: 250,
                  height: 60,
                ),

                SizedBox(height: 13,),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              new MaterialPageRoute(builder: (context) => Signup()));
                        },
                        child: Text('Sign up',
                          style: TextStyle(
                              color: Color(0xff8A8A8A),
                              fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 70,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 3.0, color: Color(0xff1ABC00),),
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  new MaterialPageRoute(builder: (context) => MyLoginPage()));
                            },

                            child: Text('Login',

                              style: TextStyle(
                                color: Color(0xff1ABC00),
                                fontSize: 20,

                              ),
                            ),

                          ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Form(
                  child: Column(
                    children: [

                      Label('E-mail'),
                      inputField(),

                      SizedBox(height: 10,),
                      Label('Password'),
                       inputField(),

                      SizedBox(height: 20,),
                      Container(
                        width: 300,height: 50,
                        decoration: BoxDecoration(
                          color:   Color(0xFF1ABC00),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => MainScreen()));

                          },
                          child: Text("Log in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                        ),

                      ),

                      Row(
                        children: [
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(left: 35.0, right: 10.0),
                                child: Divider(
                                  color: Colors.grey,
                                  height: 50,
                                )),
                          ),
                          Text('or continue with',style: TextStyle(color: Colors.grey),),
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(left: 10.0, right: 35.0),
                                child: Divider(
                                  color: Colors.grey,
                                  height: 50,
                                )),
                          ),
                        ]),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 150.0,top: 5),
                            child: Container(
                                width: 20,height: 20,
                                child: Image(image: AssetImage('assets/images/googleLogo.png'),)),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 60.0,top: 5),
                            child: Container(
                                width: 20,height: 20,
                                child: Image(image: AssetImage('assets/images/facebookLogo.png'))),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

              ],

            ),
          ),


      ),
    );
  }
}
