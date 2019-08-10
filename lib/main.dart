import 'package:flutter/material.dart';
import 'package:nine/src/Nine_home.dart';

main() => runApp(Nine());

class Nine extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: NineHome(),
    );
  }
}