import 'package:flutter/material.dart';


class ProfileBody extends StatelessWidget {
  final String name;
  final String age;
  final String image;

  ProfileBody(this.name, this.age, this.image) {
    this.name;
    this.age;
    this.image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          color: Colors.blue,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            leading: Image.asset(image),
            title: Text(
              name,
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text(
              age,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}
