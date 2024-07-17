import 'package:flutter/material.dart';


class LabelItem extends StatelessWidget {
  final String text;

  LabelItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.deepOrange,Colors.blueAccent,Colors.amber],),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
