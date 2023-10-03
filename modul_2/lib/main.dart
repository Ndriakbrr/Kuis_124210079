import 'package:flutter/material.dart';
import 'package:modul_2/page1.dart';

import 'page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.home),
          title: Text("Praktikum Mobile"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
          ],
        ),
            body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (_, index) => Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Text(
                    "ini teks ke $index",
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                ),
            itemCount: 16,
            ),
      ));
  }
}

