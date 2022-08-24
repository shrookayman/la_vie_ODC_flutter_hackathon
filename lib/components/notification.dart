import 'package:flutter/material.dart';

class NotificationRow extends StatelessWidget {
  late String image;
  late String text;


  NotificationRow({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Padding(
            padding: const EdgeInsets.all( 15.0),
            child: Center(
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(image,
                ),
              ),
            ),
          ),
          Text(text,
             style: TextStyle(

             ),
          ),
        ],

    );
  }
}
