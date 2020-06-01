import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/lines.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Divider(color: Colors.green, thickness: 2.0,),
            Text('Kindly call the following numbers to report suspicious health challenges: ', 
            textDirection: TextDirection.ltr, 
            textWidthBasis: TextWidthBasis.longestLine,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
            ),
            ),
             Divider(),
             Divider(color: Colors.green, thickness: 2.0,),
             Container(
               alignment: Alignment.center,
               color: Colors.green.shade800,
               child: Text('07025040415',style: TextStyle(
                 fontSize: 20.0,
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
               ),),
               height: 40.0,
               width: 40.0,
             ),
              
             Divider(color: Colors.green, thickness: 2.0,),
             Container(
               alignment: Alignment.center,
               color: Colors.green.shade800,
               child: Text('08115850085',style: TextStyle(
                 fontSize: 20.0,
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
               ),),
               height: 40.0,
               width: 40.0,
             ),
             Divider(color: Colors.green, thickness: 2.0,),
             Container(
               alignment: Alignment.center,
               color: Colors.green.shade800,
               child: Text('09044235334',style: TextStyle(
                 fontSize: 20.0,
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
               ),),
               height: 40.0,
               width: 40.0,
            ),
          ],
        ),
      );
  }
}