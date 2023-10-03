import 'package:flutter/material.dart';
import 'package:kuismobile/halaman_detail.dart';
import 'package:kuismobile/pokemon_data.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Pokemon"),
        backgroundColor: Colors.yellow,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: listPokemon.length,
          itemBuilder: (context,index){
            final PokemonData elemen = listPokemon[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HalamanDetail(pokemon:elemen);
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
                          elemen.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(elemen.name),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
