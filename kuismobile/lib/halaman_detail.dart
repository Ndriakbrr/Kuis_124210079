import 'package:flutter/material.dart';
import 'package:kuismobile/pokemon_data.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanDetail extends StatelessWidget {
  const HalamanDetail({super.key, required this.pokemon});
  final PokemonData pokemon ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Pokemon"),
        backgroundColor: Colors.yellow,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
        ],
      ),
      body: ListView(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height /3,
          width: MediaQuery.of(context).size.width ,
          child: Image.network(pokemon.image),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(child: Column(
            children: [
              Text(
                pokemon.name,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.red
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "TYPE",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(pokemon.type[0]),
              SizedBox(height: 10,),
              Text(
                "WEAKNESS",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(pokemon.weakness[0]),
              SizedBox(height: 10,),
              Text(
                "PREV EVOLUTION",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(pokemon.prevEvolution[0]),
              Text(
                "PREV EVOLUTION",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(pokemon.nextEvolution[0]),
            ],
          ),
          ),
        ),
        SizedBox(height: 40,),

        IconButton(onPressed: (){
          _launcher(pokemon.wikiUrl);
        }, icon: Icon(Icons.search), alignment : Alignment.bottomRight),
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
