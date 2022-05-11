import 'package:flutter/material.dart';

class fifth1 extends StatefulWidget {
  const fifth1({Key? key}) : super(key: key);

  @override
  State<fifth1> createState() => _fifth1State();
}

class _fifth1State extends State<fifth1> {


  List list=[
    {
      "albumId": 1,
      "id": 1,
      "title": "accusamus beatae ad facilis cum similique qui sunt",
      "url": "http://placehold.it/600/92c952",
      "thumbnailUrl": "http://placehold.it/150/92c952"
    },
    {
      "albumId": 1,
      "id": 2,
      "title": "reprehenderit est deserunt velit ipsam",
      "url": "http://placehold.it/600/771796",
      "thumbnailUrl": "http://placehold.it/150/771796"
    },
    {
      "albumId": 1,
      "id": 3,
      "title": "officia porro iure quia iusto qui ipsa ut modi",
      "url": "http://placehold.it/600/24f355",
      "thumbnailUrl": "http://placehold.it/150/24f355"
    },

  ];
  List <wel1>ll=[];

  int i=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for(i=0; i<list.length;i++)
      {
        
        // print("====${list[i]}");

        wel1 ww=wel1.fromJson(list[i]);
        setState(() {
          ll.add(ww);
        });

      }
       for(int j=0;j<ll.length;j++)
         {
           print("ALBUMID===${ll[j].albumId}");
           print("ID====${ll[j].id}");
           print("TITLE====${ll[j].title}");
           print("URL====${ll[j].url}");
           print("THUMBNAILURL====${ll[j].thumbnailUrl}");

         }
      // print(ll[0].id);
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class wel1 {

  // {
  // "albumId": 1,
  // "id": 1,
  // "title": "accusamus beatae ad facilis cum similique qui sunt",
  // "url": "http://placehold.it/600/92c952",
  // "thumbnailUrl": "http://placehold.it/150/92c952"
  // },

  int  albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;


  wel1(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  factory wel1.fromJson(list) {

       return wel1(list['albumId'], list['id'], list['title'], list['url'], list['thumbnailUrl']);
  }


}
