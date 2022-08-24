import 'package:flutter/material.dart';

class SelectedButton extends StatelessWidget {
  var choice;
  SelectedButton(this.choice);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFF1ABC00)),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            choice,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      width: 320,
      height: 60,
    );
  }
}

