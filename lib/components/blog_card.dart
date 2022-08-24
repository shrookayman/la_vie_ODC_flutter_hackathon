import 'package:flutter/material.dart';
import 'package:la_vie/models/blogs.dart';


class BlogCard extends StatelessWidget {
  late final int index;
  late final dynamic data;
 late  Blog _blog;

  BlogCard(this.index, this.data){
    _blog = Blog(data['name'], data['description'],'https://lavie.orangedigitalcenteregypt.com' + data['imageUrl'], data['waterCapacity'],data['sunLight'], data['temperature']);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(1,2),
            blurRadius: 5,
          )
        ],
      ),
      child: Row(
        children: [
          Column(
            children: [
                Image(image: NetworkImage(_blog.imageUrl),fit: BoxFit.cover,)
            ],
          ),
          Column(
            children: [
              Text(_blog.name, style: TextStyle(
                  fontWeight: FontWeight.bold,
                   fontSize: 20
              ),),
              Text(_blog.description,
               style: TextStyle(
                 color: Color(0xff7D7B7B),
                 fontSize: 10
               ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
