import 'dart:convert';

class Record {
  String desciption;


  Record({this.desciption});

  factory Record.responseJson(final json){
    return Record(
      desciption:json["desciption"]
    );
  }

}

