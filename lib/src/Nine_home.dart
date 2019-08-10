import 'package:flutter/material.dart';
import 'package:nine/src/Posts.dart';
import 'package:nine/src/Pages.dart';



class NineHome extends StatefulWidget{
  @override
  _NineHomeState createState() =>  _NineHomeState();
}

class _NineHomeState extends State<NineHome>{
  int pageIndex = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: leading(),
        title: title(), 
        backgroundColor: Colors.black,
        actions: actions(),
      ),
      body: 
      // Column(
      //   children: <Widget>[
      //     Row(children: <Widget>[
      //       Text('Hot'),
      //       Text('Trending'),
      //       Text('Fresh'),
      //     ],
      //     ),
          postLoader()
        // ]
        // ),
    );
  }
}

Widget leading() => IconButton(
  icon: Icon(
    Icons.menu, 
    size: 30,
  ),
  
  onPressed: (){},
);

Widget title() => Text(
  '9GAG',
  style: TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.bold,
  ),
);

List<Widget> actions()=><Widget>[
  //search Action
  Stack(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
          ),
          onPressed: (){},
        )
      ),
    ],
  ),

  //notifications Action
  Stack(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: IconButton(
          icon: Icon(
            Icons.notifications,
            size: 30,
          ),
          onPressed: (){},
        )
      ),
      Positioned(
        top: 15,
        right: 9,
        child: Container(
          height: 12.0,
          width: 12.0,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            shape: BoxShape.circle,
          ),
        ),
      ),
    ],
  ),

  //profile Action
  Stack(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: IconButton(
          icon: Icon(
            Icons.cloud_circle,
            size: 30,
          ),
          onPressed: (){},
        )
      ),
      
    ],
  )
];

  Widget navTitle() => Row(
    children: <Widget>[
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child:Text('Hot'),
          )
        ],
      ),

      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 1),          
            child: Text('Trending')
          )
        ],
      ),

      Column(
        children: <Widget>[
          Center(child:Text('Fresh'))
        ],
      ),
    ],
  ); 

  Widget postLoader() => 
      Container(
        color: Colors.black,   
        child: ListView.builder(
          itemCount: Posts.postList.length,
          itemBuilder: (BuildContext context, int indx){
            if(indx==0){
              return tag(0);
            }else{
              return EachPost(indx-1);
            }
          },
        )
  );

  Widget tags() =>Container(
    child: ListView.builder(
      itemCount: Posts.tagList.length-1,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int ind){
        return tag(ind);
      },
    ),
  );

  Widget tag(int index) => Container(
      color: Colors.white,
      child: Text(Posts.tagList[index],),
  );
