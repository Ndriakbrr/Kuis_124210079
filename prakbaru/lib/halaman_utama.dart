import 'package:flutter/material.dart';
import 'package:prakbaru/disease_data.dart';
import 'package:prakbaru/halaman_detail.dart';
import 'package:prakbaru/tourism_place.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ini halaman utama"),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: listDisease.length,
          itemBuilder: (context,index){
            final Diseases penyakit = listDisease[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HalamanDetail(tanaman:penyakit);
                }));
              },
              child: Card(
                child: SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width /6 ,
                        child: Image.network(
                          penyakit.imgUrls,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(penyakit.name),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
