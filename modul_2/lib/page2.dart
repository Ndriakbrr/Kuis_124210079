import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Index ke $index",style: TextStyle(color: Colors.black),),
        ),
      );
    },itemCount: 30,);
  }
}
