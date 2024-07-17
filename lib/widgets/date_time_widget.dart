import 'package:flutter/material.dart';

class DateTimeWidget extends StatefulWidget {
  @override
  State<DateTimeWidget> createState() => _DateTimeState();
}

class _DateTimeState extends State<DateTimeWidget> {
  TextEditingController _textEditingController = TextEditingController();

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );

    if (_picked != null) {
      setState(() {
        _textEditingController.text = _picked.toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              labelText: 'Date',
              filled: true,
              prefixIcon: Icon(Icons.calendar_today),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
            readOnly: true,
            onTap: () {
              _selectDate();
            },
          ),
        ),
      ),
    );
  }
}