import 'package:flutter/material.dart';
import 'package:mapdecording/fifth.dart';
import 'package:mapdecording/fourth.dart';
import 'package:mapdecording/second.dart';
import 'package:mapdecording/third.dart';

void main(){

  runApp(MaterialApp(home: fifth1(),));
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {


  // one map


  Map map={
    "id":"487349",
    "name":"Pooja Bhaumik",
    "score" : 1000
  };

  // open Json placeholder

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    welcome mm= welcome.fromJson(map);

    print("Id===${mm.id}    NAME===${mm.name}   SCORE===${mm.score}");
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class welcome {

  // "id":"487349",
  // "name":"Pooja Bhaumik",
  // "score" : 1000

  String id;
  String name;
  int score;

  welcome(this.id, this.name, this.score);

  // class a return ma constructor no instance mage  alter+enter

  factory welcome.fromJson(Map map) {

         return welcome(map['id'],map['name'],map['score']);
  }
}
