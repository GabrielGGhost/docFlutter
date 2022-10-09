import 'package:flutter/material.dart';
import 'package:persistence_form/Register.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'model/Pokemon.dart';

class Record extends StatefulWidget {
  const Record({Key? key}) : super(key: key);

  static const route = 'list';
  @override
  State<Record> createState() => _RecordState();
}

class _RecordState extends State<Record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de pokemon"),
        ),
        body: FutureBuilder(
          future: getPokemon(),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const LinearProgressIndicator(
                color: Colors.redAccent,
              );
            }

            if (!snapshot.hasData) {
              return Container();
            }

            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, i) {
                  Pokemon pokemon = snapshot.data![i];
                  return ListTile(
                      title: Text(pokemon.name),
                      subtitle: Row(
                        children: [
                          Text('Tipo : ${pokemon.type1}'),
                          pokemon.type2.isNotEmpty
                              ? Text(' - ${pokemon.type2}')
                              : Container()
                        ],
                      ),
                  onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (_) => const Register(),
                                settings: RouteSettings(
                                    arguments: pokemon.id.toString()
                                )));
                  },);
                });
          },
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FloatingActionButton(
                tooltip: 'Lista de pokemon',
                heroTag: 'btnNew',
                child: const Icon(Icons.add),
                onPressed: () async {
                  await Navigator.pushNamed(
                      context,
                      Register.route);
                  setState(() {});
                }),
          )
        ]));
  }

  Future<List<Pokemon>> getPokemon() async {
    final db =
        await openDatabase(join(await getDatabasesPath(), 'pokemonList.db'));
    final List<Map<String, dynamic>> maps = await db.query('pokemon');

    return List.generate(maps.length, (i) {
      return Pokemon(
        id: maps[i]['id'],
        name: maps[i]['name'],
        type1: maps[i]['type1'],
        type2: maps[i]['type2'],
      );
    });
  }
}
