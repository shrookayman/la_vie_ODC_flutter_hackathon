  import 'package:flutter/material.dart';

class inputField extends StatelessWidget {
    const inputField({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return  Row(
        children: [
          Expanded(child:
          Padding(
            padding: const EdgeInsets.only(top: 10.0,bottom: 10,left: 25,right: 25),
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
      );
    }
  }
class Label extends StatelessWidget {
  String text;

  Label(this.text);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(text,style: TextStyle(color: Color(0xff6F6F6F)),),
        ),
      ],
    );
  }
}
