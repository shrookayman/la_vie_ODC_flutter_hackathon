import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        cursorColor: Color(0xff8A8A8A),

        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xffF5F5F5),width: 3)
          ),
          focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(color: Color(0xffF5F5F5) ,width: 3),
            borderRadius: BorderRadius.circular(10)
        ),
          filled: true,
          fillColor: Color(0xffF5F5F5),
          prefixIcon: Icon(Icons.search_outlined,color: Color(0xff979797),),
          hintText: 'search' , hintStyle: TextStyle(color: Color(0xff979797))
        ),

      ),
    );
  }
}
