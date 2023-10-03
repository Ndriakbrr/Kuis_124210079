import 'package:flutter/material.dart';
import 'package:prakbaru/disease_data.dart';
import 'package:prakbaru/tourism_place.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanDetail extends StatelessWidget {
  const HalamanDetail({super.key, required this.tanaman});
  final Diseases tanaman ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman detail"),
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
        ],
      ),
      body: ListView(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height /3,
          width: MediaQuery.of(context).size.width ,
          child: Image.network(tanaman.imgUrls),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(child: Column(
            children: [
              Text(
                tanaman.name,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.red
                ),
              ),
              Text(
                tanaman.plantName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              Text(tanaman.symptom),
              SizedBox(height: 10,),
              Text(tanaman.nutshell[0])
            ],
          ),
          ),
        ),
        SizedBox(height: 40,),
        IconButton(onPressed: (){
          _launcher(tanaman.imgUrls);
        }, icon: Icon(Icons.link)),
        SizedBox(height: 20,),
      ],),
    );
  }
  Future<void> _launcher(String url) async{
    final _url = Uri.parse(url);
    if(!await launchUrl(_url)){
      throw Exception("gagal membuka url : $_url");
    }
  }
}
