import 'package:flutter/material.dart';
import 'package:la_vie/models/user.dart';

import '../models/fourms.dart';

class ForumCard extends StatelessWidget {

  final int index;
  final dynamic data ;
  late  Forum _forum;
  late UserForumInfo _userForumInfo ;
  late User _user;
  ForumCard(this.index, this.data ,{Key? key}) : super(key: key){
    _forum = Forum(data['title'], data['description'], 'https://lavie.orangedigitalcenteregypt.com' + data['imageUrl'], data['ForumLikes'].length, data['ForumComments'].length);
     _userForumInfo = UserForumInfo(data['firstName'], data['lastName'], data['imageUrl']);
     _user =User(data['firstName'], data['lastName'], data['imageUrl'], data['userPoints']);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 250,
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width * .05),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(children: [
          //   Text(_user.firstName),
          // ],),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              _forum.title, //
              textAlign: TextAlign.start,
              style:  TextStyle(
                color: Color(0xff1ABC00),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,bottom: 6),
            child: Text(
              _forum.description,
              style:  TextStyle(
                color: Color(0xff8F8D8D),
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(_forum.imageUrl),
                    fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: [
              Icon(Icons.thumb_up_alt_outlined, color: Color(0xff8F8D8D),),
              Text(' ${_forum.ForumLikes} Likes', style: TextStyle(color: Color(0xff8F8D8D), fontWeight: FontWeight.bold),),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
             // Icon(Icons.comment_outlined, color: Color(0xff8F8D8D),),
              Text(' ${_forum.ForumComments} replies', style: TextStyle(color: Color((0xff8F8D8D)), fontWeight: FontWeight.bold),),
            ],),
          )
        ],

      ),
    );
  }
}