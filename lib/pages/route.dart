import 'package:flutter/material.dart';

class Traffics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('\t \t    SELF ISOLATION GUIDE', style: TextStyle(
              fontSize: 24.0,
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),),
            Divider(color: Colors.black, thickness: 1.0,),
            Image(
              image: AssetImage('assets/images/cyolabackground.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Divider(),
            Image(
              image: AssetImage('assets/images/iso1.jpeg'),
              fit: BoxFit.scaleDown,
            ),
            Divider(),
            Text('1. Self Isolate for 14 days', 
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                ),
            ),
            Divider(color: Colors.black),
            Image(
              image: AssetImage('assets/images/iso2.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Divider(),
            Text('2. Stay in a well ventilated room', 
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                ),
            ),
            Divider(color: Colors.black),
            Image(
              image: AssetImage('assets/images/iso3.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Divider(),
            Text('3. Work from home', 
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                ),
            ),
            Divider(color: Colors.black),
            Image(
              image: AssetImage('assets/images/iso4.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Divider(),
            Text('4. Ensure you have adequate Supplies', 
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                ),
            ),
            Divider(color: Colors.black),
            Image(
              image: AssetImage('assets/images/1.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Divider(),
            Text('5. Practice clean hygiene regularly', 
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                ),
            ),
            Divider(color: Colors.black),
            Image(
              image: AssetImage('assets/images/2.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Divider(),
            Text('6. Frequently clean & disinfect surfaces', 
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                ),
            ),
            Divider(color: Colors.black),
            Image(
              image: AssetImage('assets/images/3.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Divider(),
            Text('7. Contact NCDC or COVID19 ADAMAWA Situation Room', 
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                ),
            ),
            Divider(color: Colors.black),
            Image(
              image: AssetImage('assets/images/4.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Divider(),
            Image(
              image: AssetImage('assets/images/lines.jpeg'),
              fit: BoxFit.fitWidth,
            ),
            Divider(),
          ],
        ),
      );
  }
}