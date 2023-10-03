import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        automaticallyImplyLeading: false,
        title: Text("ini halaman 3", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("ini halaman 3"),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("kembali"))
          ],
        ),
      ),
    );
  }
}
