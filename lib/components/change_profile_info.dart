import 'package:flutter/material.dart';

class ChangeProfileInfo extends StatelessWidget {
  String text;


  ChangeProfileInfo(this.text);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.08,

        decoration: BoxDecoration(
           color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15),
          boxShadow:[
            BoxShadow(
              color: Colors.grey.shade100,
              offset: Offset(1,1),
            )
          ]
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 30,height: 30,
                decoration: BoxDecoration(
                  color: Color(0xff1D592C),
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: Container(
                  width: 15,height: 15, color: Colors.white,
                  child: Icon(Icons.compare_arrows_outlined,color: Color(0xff1D592C),size: 15,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                '${text}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 110,),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}

