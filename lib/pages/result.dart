import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultText {
    String text;
    if (resultScore <= 2) {
      
      text = 'Based on the responses you have provided, your risk of having been exposed to COVID-19 is low';
    }
    else if(resultScore >2 && resultScore <= 4){
      text = '\nBASED ON YOUR SYMPTOMS, You may need to consult your doctor for advice. \n \n \nClick on the contact tab below to get help. Tell the emergency staff if you have had contact with someone with COVID-19 or if you have recently been to an area where COVID-19 is spreading.';

    }
     else if (resultScore > 4) {
      text = '\nBASED ON YOUR SYMPTOMS, URGENT MEDICAL ATTENTION MAY BE NEEDED. \n \n \nClick on the contact tab below to get help. Tell the emergency staff if you have had contact with someone with COVID-19 or if you have recently been to an area where COVID-19 is spreading.';
    } 
    else {
      text = '\nBASED ON YOUR SYMPTOMS, URGENT MEDICAL ATTENTION MAY BE NEEDED. \n \n \nClick on the contact tab below to get help. Tell the emergency staff if you have had contact with someone with COVID-19 or if you have recently been to an area where COVID-19 is spreading.';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              resultText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                wordSpacing: 1.0,
                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.left,
            ),
            Divider(),
            
            Divider(),
            RaisedButton(
              child: Text('Test Again', style: TextStyle(
                fontSize: 24.0,
                textBaseline: TextBaseline.ideographic,
                color: Colors.white,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.none,
                decorationColor: Colors.green.shade800,
                fontStyle: FontStyle.normal,
              ),),
              onPressed: resetQuiz,
              color: Colors.green,
              splashColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
