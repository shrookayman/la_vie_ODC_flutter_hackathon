
import 'package:flutter/material.dart';
import 'package:la_vie/components/change_profile_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image:ExactAssetImage('assets/images/profilePhoto.jpg',
            
            ),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),


          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/profilePhoto.jpg',
                  ),
                ),
              ),
            ),
            Text('Shrouk Ayman',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
            ),
            ),
            SizedBox(height: 50,),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height:80 ,
                      decoration: BoxDecoration(
                        color: Color(0xffF3FEF1),
                      ),
                      child: Row(
                        children: [
                        CircleAvatar(
                            backgroundColor: Color(0xFFF8D417),
                            radius: 18,
                            child:  CircleAvatar(
                              radius: 15,
                            backgroundColor: Color(0xFF1ABC00),
                            child: Icon(Icons.star,
                              color: Color(0xFFF8D417),) ,
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('You hav 30 points',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                          ),

                        ],
                      ),
                      
                    ),
                  ),
                   Row(
                     children:[
                       Padding(
                         padding: const EdgeInsets.only(left: 12.0),
                         child: Text('Edit Profile',
                         style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,),),
                       ),
                     ]
                   ),
                     ChangeProfileInfo('Change Name'),

                     ChangeProfileInfo('Change Email'),


                ],

              ),
            ),

          ],
        ),
      ),
    );
  }
}

