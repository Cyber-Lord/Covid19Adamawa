import 'package:COVID19_Adamawa/pages/test_home.dart';
import 'package:flutter/material.dart';
import 'package:COVID19_Adamawa/pages/home_page.dart';
import 'contact.dart';
import 'route.dart';
import 'quiz.dart';



class Home extends StatefulWidget {
  Home({
    Key key,
  }): super(key: key);

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List _listPages = List();
  Widget _currentPage;

  @override
  void initState(){
    super.initState();
    _listPages
      ..add(HomePage())
      ..add(QuizHome())
      ..add(Traffics())
      ..add(Contact());
    _currentPage = HomePage();
  }

  void _changePage(int selectedIndex){
    setState(() {
     _currentIndex = selectedIndex;
    _currentPage = _listPages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COVID-19 UPDATE\'S', 
          
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          
          ),
        ),
      ), 
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: _currentPage,
        ),
      ), 

     bottomNavigationBar: BottomNavigationBar(
       currentIndex: _currentIndex,
       items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           title: Text('Home'),
           backgroundColor: Colors.green,
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.local_hospital),
           title: Text('Self Test'),
           backgroundColor: Colors.green,
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.playlist_add_check),
           title: Text('Guides'),
           backgroundColor: Colors.green,
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.contact_phone),
           title: Text('Contact'),
           backgroundColor: Colors.green,
         ),
       ],
       onTap: (selectedIndex) => _changePage(selectedIndex),
       backgroundColor: Colors.black,
    ),
    
    ); 
  } 
}