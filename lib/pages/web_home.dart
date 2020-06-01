/*  import 'package:flutter/material.dart';
import 'web_view_container.dart';
import 'home_page.dart';

class WebHome extends StatelessWidget {
  final link = ['https://google.com'];

  @override
  Widget addButton(BuildContext context) {
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
}  */