
import 'package:COVID19_Adamawa/pages/web_home.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:COVID19_Adamawa/classes/database.dart';
import 'package:intl/intl.dart';
import 'web_view_container.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'homepi.dart';


class HomePage extends StatefulWidget {
  final link = ['https://google.com'];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Future<Record> futureRecord;

  

  Future<Record> getRecords() async{
    final response  = await http.get('https://covid19project.org.ng/api/endpoints/stats?action=totalcases');
      //'https://endpoint-covid19.herokuapp.com/');
    if (response.statusCode == 200){
      //var a = Record.fromJson(json.decode(response.body));
      //print(a.confcase);
      return Record.fromJson(json.decode(response.body));
    }
    else{
      throw Exception('Failed to get record');
    }
  }


  @override
  void initState(){
    super.initState();
    futureRecord = getRecords();
    //_buildTable(context);
    _showTimeAndDate(context);
  }


  @override
  Widget build(BuildContext context){
    
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          
        ),
        child: Column(
          
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _buildHeader(context),
       // Divider(),
        _showTimeAndDate(context),
        Divider(color: Colors.blue,),
        _buildTable(context),
        Divider(color: Colors.blue,),
        _bottomImage(context),
        
        
      ],
    ),
        
      ),
      
     floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
     floatingActionButton: FloatingActionButton(
       onPressed: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewContainer(url)));
       },
       backgroundColor: Colors.green,
       child: Icon(
         Icons.add,
       ),
     ),
    );
  }
  

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
          CircleAvatar(
          backgroundImage: AssetImage('assets/images/cyola.jpg'),
          radius: 60,
          ),
          //Divider(color: Colors.black,),
          Text('\nTAKE RESPONSIBILITY, \n \t    STOP the spread.', style: TextStyle(
            decorationColor: Colors.green.shade800,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            color: Colors.green.shade800,
            ),
          ),
         // Divider(color: Colors.blue,),
      ],
    );
  }
  Widget _buildTable(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
          Padding(
            padding: EdgeInsets.all(4.0),
            child: FutureBuilder<Record>(
            future: futureRecord,
            builder: (context, snapshot) {

            if(snapshot.hasData){
              //var items = snapshot.data;
              //return Text(snapshot.data.confcase.toString());
              //print(items);
              return SafeArea(
                child: Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FlatButton(onPressed: null, 
                      child: 
                     Text('TOTAL CONFIRMED: ', style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          backgroundColor: Colors.amber.shade500,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),),),
                       // Divider(),
                        FlatButton(onPressed: null,
                          child:
                          Text('     DISCHARGED:       ', style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          backgroundColor: Colors.green,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),),),
                     //   Divider(),
                        FlatButton(onPressed: null, 
                        child: 
                        Text('         DEATHS:            ', style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          backgroundColor: Colors.red,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),),),
                       // Divider(),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        FlatButton(onPressed: null, 
                      child: 
                     Text(snapshot.data.confcase.toString(), style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          backgroundColor: Colors.amber.shade500,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),),),
                       // Divider(),
                        FlatButton(onPressed: null, 
                          child: 
                          Text(snapshot.data.recovered.toString(), style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          backgroundColor: Colors.green,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),),),
                       // Divider(),
                        FlatButton(onPressed: null, 
                        child: 
                        Text(snapshot.data.deaths.toString(), style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          backgroundColor: Colors.red,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),),),
                       // Divider(),
                      ],
                    ),
                   
                  ],
                  ),
                  
                );
            }
            else if(snapshot.hasError){
              return Text('Check your connectivity status');
              //return Text('${snapshot.error}');
            }
              return CircularProgressIndicator();
            }, 
          ),
        ),
      ],
    );
  }
   Widget _showTimeAndDate(BuildContext context){
     var now = new DateTime.now();
      var formatter = new DateFormat('dd-MM-yyyy');
      String formattedTime = DateFormat('hh:mm:a').format(now);
      String formattedDate = formatter.format(now);
  
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('COVID-19 CASE UPDATE',
            style: TextStyle(
              decorationStyle: TextDecorationStyle.solid,
              decorationThickness: 1,
              decoration: TextDecoration.underline,
              textBaseline: TextBaseline.alphabetic,
              decorationColor: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontStyle: FontStyle.normal,
            ),
            
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
        Text(formattedTime,
          textAlign:TextAlign.right,
          style: new TextStyle(
            fontWeight: FontWeight.normal, 
            fontSize: 20.0, color: 
            Colors.green.shade800),
        ),
        Text('\t \t \t'),
        Text(
          formattedDate,
          textAlign:TextAlign.right,
          style: new TextStyle(
            fontWeight: FontWeight.normal, 
            fontSize: 20.0, color: 
            Colors.green.shade800),
        ),
          ],
        ),
       
      ],
  );
  } 
  Widget _bottomImage(BuildContext context){
    return Image(
      colorBlendMode: BlendMode.colorBurn,
      height: 120, 
      width: 660.0,
      image: AssetImage('assets/images/lines.jpeg'),
      fit: BoxFit.fitWidth,
    
    );
  }
}
 Widget addButton(BuildContext context) {
    final link = ['https://google.com'];
        return Scaffold(
            body: SafeArea(
                child: SingleChildScrollView(
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: link.map((link) => _urlButton(context, link)).toList(),
    ))));
  }
  Widget _urlButton(BuildContext context, String url){
    return Container(
      padding: EdgeInsets.all(20.0),
      child: FlatButton(
        onPressed: ()=> _handleURLButtonPress(context, url), 
        child: Text(url),
      ),
    );
  }

  void _handleURLButtonPress(BuildContext context, String url){
    Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewContainer(url),));
  }

