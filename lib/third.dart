import 'package:flutter/material.dart';

class third1 extends StatefulWidget {
  const third1({Key? key}) : super(key: key);

  @override
  State<third1> createState() => _third1State();
}

class _third1State extends State<third1> {
  // map in map

  Map map = {
    "shape_name": "rectangle",
    "property": {
      "width": 5.0,
      "breadth": 10.0}
  };


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    welcome3 mmmm = welcome3.fromJson(map);
    print(
        "SHAPE===${mmmm.shape_name}  PROPERTY====${mmmm.property.width}   PROPERTY====${mmmm.property.breadth}");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class welcome3 {
  
  // "property":{
  // "width":5.0,
  // "breadth":10.0}

  String shape_name;
  well property;
  

  welcome3(this.shape_name, this.property);
  

  factory welcome3.fromJson(Map map) {
    // well ww = well.fromJson(map['property']);

    return welcome3(map['shape_name'], well.fromJson('property'));
  }
}

class well {
  // "property":{
  // "width":5.0,
  // "breadth":10.0}

  int width;
  int breadth;

  well(this.width, this.breadth);

  factory well.fromJson(property) {
    return well(property['width'], property['breadth']);
  }
}
