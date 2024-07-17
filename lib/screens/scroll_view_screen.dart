import 'package:flutter/material.dart';

import '../widgets/label_item_widget.dart';

class ScrollViewExample extends StatefulWidget {
  @override
  _ScrollViewExampleState createState() => _ScrollViewExampleState();
}

class _ScrollViewExampleState extends State<ScrollViewExample> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.atEdge) {
      if (_scrollController.position.pixels != 0) {
        // If we are at the bottom of the scroll view
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Scroll View'),
            content: Text('You have reached the end of the scroll view.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollview '),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            LabelItem(text: 'Label 1'),
            SizedBox(height: 15.0,),
            LabelItem(text: 'Label 2'),
            SizedBox(height: 15.0,),
            LabelItem(text: 'Label 3'),
            SizedBox(height: 15.0,),
            LabelItem(text: 'Label 4'),
            SizedBox(height: 15.0,),
            LabelItem(text: 'Label 5'),
            SizedBox(height: 15.0,),
            LabelItem(text: 'Label 6'),
            SizedBox(height: 15.0,),
            LabelItem(text: 'Label 7'),
            SizedBox(height: 15.0,),
            LabelItem(text: 'Label 8'),
          ],
        ),
      ),
    );
  }
}

