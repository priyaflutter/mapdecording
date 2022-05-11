import 'package:flutter/material.dart';
import 'package:mapdecording/main.dart';

class second1 extends StatefulWidget {
  const second1({Key? key}) : super(key: key);

  @override
  State<second1> createState() => _second1State();
}

class _second1State extends State<second1> {

  // map of List

  Map map={
    "city": "Mumbai",
    "streets": [
      "address1",
      "address2"
    ]
  };

  int i=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    welcome2 mmm=welcome2.fromJson(map);
    print("CITY===${mmm.city}");

    for(i=0;i<mmm.streets.length;i++)
      {
        print("STREET===${mmm.streets[i]}");
      }


  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class welcome2 {

  // "city": "Mumbai",
  // "streets": [
  // "address1",
  // "address2"
  // ]

  String city;
  List<String> streets;


  welcome2(this.city, this.streets);

  factory welcome2.fromJson(Map map) {

        return welcome2(map['city'],map['streets']);

  }

}
