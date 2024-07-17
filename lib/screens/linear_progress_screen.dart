import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../widgets/buttonstyle_widget.dart';

class LinearProgressScreen extends StatefulWidget {
  const LinearProgressScreen({super.key});

  @override
  State<LinearProgressScreen> createState() => _LinearProgressScreenState();
}

class _LinearProgressScreenState extends State<LinearProgressScreen> {
  late int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linear Progress"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    ("Steps: "),style: TextStyle(fontSize: 18.0,),
                  ),
                  Text("$_currentStep",style: TextStyle(fontSize: 18.0),),
                ],
              ),
              SizedBox(height: 10.0,),
              LinearProgressBar(
                maxSteps: 10,
                progressType: LinearProgressBar.progressTypeLinear,
                currentStep: _currentStep,
                progressColor: Colors.red,
                backgroundColor: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                minHeight: 8.0,
              ),
              SizedBox(height: 10.0,),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _currentStep=_currentStep+1;
                    if(_currentStep==11)
                      {
                        _currentStep=0;
                      }
                  });
                },
                child: Text("Continue"),
                style:ButtonStyles.defaultButtonStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
