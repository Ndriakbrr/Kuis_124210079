import 'package:flutter/material.dart';
import 'package:prakbaru/page2.dart';
import 'package:url_launcher/url_launcher.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("ini halaman 1", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("ini halaman 1"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Page2();
              }));
            }, child: Text("Ke page 2")),
            TextButton(onPressed: (){
              _launcher("https://spada.upnyk.ac.id/");
            }, child: Text("buka url"))
          ],
        ),
      ),
    );
  }
  Future<void> _launcher(String url) async{
    final Uri _url = Uri.parse(url);
    if(!await launchUrl(_url)){
      throw Exception("gagal membuka url : $_url");
    }
  }
}
