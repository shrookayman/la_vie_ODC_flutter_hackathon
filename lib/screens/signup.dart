import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/text_field.dart';
import 'login.dart';
import 'main_screen.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              SizedBox(height: 25,),
              Image.asset('assets/images/logo.png',
                width: 250,
                height: 60,
              ),

              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 3.0, color: Color(0xff1ABC00),),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                           Navigator.push(context,
                               new MaterialPageRoute(builder: (context) => Signup()));
                        },

                          child:   Text('Sign up',
                            style: TextStyle(
                              color: Color(0xff1ABC00),
                              fontSize: 20,
                            ),
                          ),

                      ),
                    ),
                    SizedBox(width: 70,),
                   TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              new MaterialPageRoute(builder: (context) => MyLoginPage()));
                        },
                        child: Text('Login',
                          style: TextStyle(
                            color: Color(0xff8A8A8A),
                            fontSize: 20,

                          ),
                        ),

                      ),

                  ],
                ),
              ),
              SizedBox(height: 40,),

              Form(child:
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Row(
                         children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 25.0),
                           child: Text('First Name',style: TextStyle(color: Color(0xff6F6F6F)),),
                         ),
                           Padding(
                             padding: const EdgeInsets.only(left: 105.0),
                             child: Text('Last Name',style: TextStyle(color: Color(0xff6F6F6F)),),
                           ),

                       ],),
                       Row(
                         children: [
                          Expanded(child:
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0,bottom: 10,top: 10,right: 15),
                            child: SizedBox(
                              height: 45,
                              child: TextFormField(
                                cursorColor: Color(0xff8A8A8A),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.white,

                                ),
                              ),
                            ),
                          ),
                          ),
                           Expanded(child:
                           Padding(
                             padding: const EdgeInsets.only(left: 15.0,bottom: 10,top: 10,right: 25),
                             child: SizedBox(
                               height: 45,
                               child: TextFormField(
                                 cursorColor: Color(0xff8A8A8A),
                                 decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                   filled: true,
                                   fillColor: Colors.white,

                                 ),
                               ),
                             ),
                           ),
                           ),

                         ],
                       ),
                       Label('E-mail'),
                       inputField(),
                       Label('Password'),
                       inputField(),
                       Label('Confirm Password'),
                       inputField(),
                       Container(
                         width: 310,height: 50,
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
                                   margin: const EdgeInsets.only(left: 5.0, right: 10.0),
                                   child: Divider(
                                     color: Colors.grey,
                                     height: 50,
                                   )),
                             ),
                             Text('or continue with',style: TextStyle(color: Colors.grey),),
                             Expanded(
                               child: new Container(
                                   margin: const EdgeInsets.only(left: 10.0, right: 5.0),
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
                   )
              ),

            ],

          ),
        ),


      ),
    );

  }
}
