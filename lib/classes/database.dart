/* import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async'; */


class Record{
   int confcase;
   int deaths;
   int recovered;

  Record({this.confcase, this.deaths, this.recovered});
  
  factory Record.fromJson(Map<String, dynamic> json) {
    return Record(
      confcase : json['adamawa-covid19-data'][0][0],
      deaths : json['adamawa-covid19-data'][0][1],
      recovered : json['adamawa-covid19-data'][0][2],
    );
  }
}