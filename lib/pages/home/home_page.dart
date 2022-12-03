import 'package:flutter/material.dart';
import 'dart:math';
import 'package:trainning/pages/home/home_widgets/home_appBar.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  //Gera uma lista randomica
  List<String> ?lista;
  var random = Random();

  @override
  void initState() {
    lista = _generateList();
    super.initState();
  }

_generateList() => List.generate(random.nextInt(20), (i) => 'item $i');    
//metodo que recebe a promisse e gera a lista
Future<void> _reloadList() async {
  var newList = 
    await Future.delayed(Duration(seconds: 2), () => _generateList());
  setState(() {
    lista = newList;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHomeAppBar(), 
      body: RefreshIndicator(//Faz o loading da lista
        onRefresh: _reloadList,
        child: ListView.builder(
          itemCount: lista?.length,
          itemBuilder: (_, int index){
            return ListTile(
              title: Text('lista ${index}'),
            );
          }),
      ),//Finaliza loading da lista
      );
    
  }    
}