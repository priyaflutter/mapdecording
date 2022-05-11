import 'package:flutter/material.dart';

 class fourth1 extends StatefulWidget {
  const fourth1({Key? key}) : super(key: key);

  @override
  State<fourth1> createState() => _fourth1State();
}

class _fourth1State extends State<fourth1> {


  Map map={
    "id":1,
    "name":"ProductName",
    "images":[
      {
        "id":11,
        "imageName":"xCh-rhy"
      },
      {
        "id":31,
        "imageName":"fjs-eun"
      }
    ]
  };


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    welcome4 www=welcome4.fromJson(map);
    print("ID===${www.id}");
    print("NAME===${www.name}");




    for(int j=0;j<www.images.length;j++)
      {
        print("ID===${www.images[j].id}");
        print("IMAGENAME===${www.images[j].imageName}");
      }



  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
int i=0;
class welcome4 {

  int id;
  String name;
  List<second> images;


  welcome4(this.id, this.name, this.images);

  factory welcome4.fromJson(Map map) {

    List<second> temp=[];
    List list=map['images'];


    for(i=0;i<list.length;i++)
      {
        second ww2=second.fromJson(list[i]);
        temp.add(ww2);
      }

        return welcome4(map['id'], map['name'],temp);
  }
}

class second {

  // "images":[
  // {
  // "id":11,
  // "imageName":"xCh-rhy"
  // },
  // {
  // "id":31,
  // "imageName":"fjs-eun"
  // }
  // ]

  int id;
  String imageName;


  second(this.id, this.imageName);

  factory second.fromJson(list) {

       return second(list['id'],list['imageName']);

  }
}




