import 'package:flutter/material.dart';

class NineHome extends StatefulWidget{
  @override
  _NineHomeState createState() =>  _NineHomeState();
}

class _NineHomeState extends State<NineHome>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: leading(),
        title: title(),
        backgroundColor: Colors.black,
        actions: actions(),
      ),
      body: Container(),
    );
  }
}

Widget leading() => IconButton(
  icon: Icon(
    Icons.menu, 
    size: 30,
    //color: Colors.grey[600],
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