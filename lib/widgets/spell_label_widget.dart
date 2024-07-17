import 'package:flutter/material.dart';

class SpellLabel extends StatelessWidget {
  final String spellName;

  SpellLabel({required this.spellName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.deepOrangeAccent,Colors.lightBlueAccent,Colors.purple]),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(2, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Text(
        spellName,
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
