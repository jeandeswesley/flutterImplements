import 'package:flutter/material.dart';

AppBar getHomeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    //backgroundColor: Color(0xff01ff4f), cor next
    leading: BackButton(       
      color: Colors.black,
    ),
    title: Text('nextClone', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
    centerTitle: true, 
    actions: [Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal:14),
      child: Container(
        child: Text('Menu', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)), 
      ),
    )],   
  );
   
}