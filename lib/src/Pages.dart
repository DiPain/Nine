import 'package:flutter/material.dart';
import 'package:nine/src/Posts.dart';

class EachPost extends StatefulWidget {
  final int postIndex;

  EachPost(this.postIndex);

  @override
  _EachPostState createState() => _EachPostState();
}

class _EachPostState extends State<EachPost> {
  int likeCount = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // title 
        titleRow(),

        // the images/videos of post
        actualPost(),
        SizedBox(height: 8.0),

        // for upvote buttons
        actionBar(),
        SizedBox(height: 10.0),        
      ],
    );
  }

  Widget titleRow() => Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      children: <Widget>[
        Row( children: <Widget>[
          Expanded(            
            child: Text(Posts.postList[widget.postIndex][0],
            style: TextStyle(color: Colors.white),)
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
            icon: Icon(Icons.more_horiz),
            color: Colors.white,
            onPressed: (){},
          ))
        ]),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            Posts.postList[widget.postIndex][1],
            textScaleFactor: 1.7,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ),
      ],    
    )
  );

  Widget actualPost() => Container(
    width:double.infinity,
    decoration: new BoxDecoration(
      color: Colors.transparent,
    ),
    child: Image.asset(Posts.postList[widget.postIndex][2],
      fit: BoxFit.fitWidth,
    ),
  );

  Widget actionBar() =>Row(
    children: <Widget>[
      IconButton(
        icon: Icon(Icons.thumb_up),
        color: Colors.white,
        onPressed: (){},
      ),
      Text("3k",
        style: TextStyle(color: Colors.white),
      ),
      SizedBox(width: 10),

      IconButton(
        icon: Icon(Icons.thumb_down),
        color: Colors.white,
        onPressed: (){},
      ),
      Text("1k",
        style: TextStyle(color: Colors.white),
      ),
      SizedBox(width: 10),

      IconButton(
        icon: Icon(Icons.comment),
        color: Colors.white,
        onPressed: (){},
      ),
      Text("129",
        style: TextStyle(color: Colors.white),
      ),
      SizedBox(width: 90),

      IconButton(
        icon: Icon(Icons.share),
        color: Colors.white,
        onPressed: (){},
      ),
      Text("Share",
        style: TextStyle(color: Colors.white),
      ),

    ],
  );
}