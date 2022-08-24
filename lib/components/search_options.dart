import 'package:flutter/material.dart';

class SearchOptions extends StatefulWidget {
final String options;
Color color;

SearchOptions(this.options,this.color);

  @override
  State<SearchOptions> createState() => _SearchOptionsState(options,color);
}

class _SearchOptionsState extends State<SearchOptions> {
  late String options;
  Color color;


  _SearchOptionsState(this.options,this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 65,
        height: 40,
        child: Center(
          child: Text(
            '${options}',
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff979797),
            ),

          ),
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: color, width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
