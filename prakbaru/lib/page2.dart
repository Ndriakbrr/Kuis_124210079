import 'package:flutter/material.dart';
import 'package:prakbaru/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        automaticallyImplyLeading: false,
        title: Text("ini halaman 2", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("ini halaman 2"),
            OutlinedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return Page3();
              }));
            }, child: Text("ke page 3")),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("kembali"))
          ],
        ),
      ),
    );
  }
}
