import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistence_form/model/Pokemon.dart';
import 'package:sqflite/sqflite.dart';
import 'Constantes.dart';
import 'Record.dart';
import 'package:path/path.dart' as Path;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  static const route = 'register';

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final pokemonIdController = TextEditingController();
  final pokemonNameController = TextEditingController();
  final type1Controller = TextEditingController();
  final type2Controller = TextEditingController();

  late FocusNode pokemonNameFocus;
  late FocusNode type1Focus;
  late FocusNode type2Focus;
  var codPokemon = "";
  bool loadedData = false;

  @override
  void initState() {
    pokemonNameController.addListener(_printLatestValue);
    pokemonNameFocus = FocusNode();
    type1Focus = FocusNode();
    type2Focus = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    pokemonNameController.dispose();
    type1Controller.dispose();
    type2Controller.dispose();
    pokemonNameFocus.dispose();
    type1Focus.dispose();
    type2Focus.dispose();
    pokemonIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    codPokemon = ModalRoute.of(context)!.settings.arguments != null
        ? ModalRoute.of(context)!.settings.arguments as String
        : "";
    String label = codPokemon.isEmpty
        ? "Cadastro de novo Pokemon"
        : "Pokemon ${pokemonIdController.text}";
    findPokemon();
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Constantes.defaultScreenPadding),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: pokemonNameController,
                focusNode: pokemonNameFocus,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informar o nome do pokemon';
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Nome do pokemon'),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, right: 5),
                      child: TextFormField(
                        controller: type1Controller,
                        focusNode: type1Focus,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Informar pelo menos um tipo';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Tipo 1'),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 8, left: 5),
                    child: TextFormField(
                      controller: type2Controller,
                      focusNode: type2Focus,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Tipo 2'),
                    ),
                  ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  codPokemon.isEmpty
                      ? ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              savePokemon();
                            }
                          },
                          child: const Text("Cadastrar"))
                      : ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              updatePokemon();
                            }
                          },
                          child: const Text("Atualizar")),
                  codPokemon.isNotEmpty ?
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate())  {
                            await deletePokemon();
                            setState(() {});
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent),
                        child: const Text("Cadastrar")),
                  ) : Container()
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FloatingActionButton(
                tooltip: 'Focus Second Text Field',
                heroTag: 'btnFocus',
                onPressed: () {
                  if (pokemonNameController.text.isEmpty) {
                    pokemonNameFocus.requestFocus();
                  } else if (type1Controller.text.isEmpty) {
                    type1Focus.requestFocus();
                  } else if (type2Controller.text.isEmpty) {
                    type2Focus.requestFocus();
                  }
                },
                child: const Icon(Icons.edit)),
          ),
          FloatingActionButton(
            heroTag: 'btnResume ',
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) {
                  String resume = '${pokemonNameController.text.trim()}\r\n';
                  resume += 'Tipo 1: ${type1Controller.text.trim()}';
                  if (type2Controller.text.trim().isNotEmpty) {
                    resume += '   Tipo 2: ${type2Controller.text.trim()}';
                  }
                  return AlertDialog(
                    content: Text(resume),
                  );
                },
              );
            },
            tooltip: 'Show me the value!',
            child: const Icon(Icons.text_fields),
          )
        ],
      ),
    );
  }

  void _printLatestValue() {
    print('Second text field: ${pokemonNameController.text}');
  }

  Future<void> savePokemon() async {
    try {
      final db = await openDatabase(
          Path.join(await getDatabasesPath(), 'pokemonList.db'));

      Pokemon pokemon = Pokemon(
          name: pokemonNameController.text,
          type1: type1Controller.text,
          type2: type2Controller.text);

      await db.insert(
        'pokemon',
        pokemon.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      print("Pookemon Inserido");
      clearForm();
      if (mounted) {
        Navigator.pop(context);
      }
    } catch (ex) {
      print("Erro ao inserir pokemon\r\n$ex");
    }
  }

  Future<void> updatePokemon() async {
    try {
      final db = await openDatabase(
          Path.join(await getDatabasesPath(), 'pokemonList.db'));

      Pokemon novoPokemon = Pokemon(
          name: pokemonNameController.text,
          type1: type1Controller.text,
          type2: type2Controller.text);
      novoPokemon.id = int.parse(codPokemon);

      db.update('pokemon', novoPokemon.toMap(),
          where: 'id = ?', whereArgs: [codPokemon]);
      print("Pokemon Atualizado");
      if (!mounted) return;
      Navigator.pop(context);
    } catch (ex) {
      print("Erro ao atualizar pokemon\r\n$ex");
    }
  }

  void clearForm() {
    setState(() {
      pokemonNameController.clear();
      type1Controller.clear();
      type2Controller.clear();

      pokemonNameFocus.requestFocus();
    });
  }

  Future<void> findPokemon() async {
    if (loadedData || codPokemon.isEmpty) return;
    final db = await openDatabase(
        Path.join(await getDatabasesPath(), 'pokemonList.db'));
    final List<Map<String, dynamic>> maps =
        await db.rawQuery('SELECT * FROM pokemon where id = $codPokemon');
    Pokemon pokemon = Pokemon(
      id: maps[0]['id'],
      name: maps[0]['name'],
      type1: maps[0]['type1'],
      type2: maps[0]['type2'],
    );

    setState(() {
      pokemonIdController.text = pokemon!.id.toString();
      pokemonNameController.text = pokemon.name;
      type1Controller.text = pokemon.type1;
      type2Controller.text = pokemon.type2;
      loadedData = true;
      print("Dados Populados");
    });
    return;
  }

  Future<void> deletePokemon() async {
    try {
      final db = await openDatabase(
          Path.join(await getDatabasesPath(), 'pokemonList.db'));

      db.delete('pokemon',
        where: 'id = ?',
        whereArgs: [codPokemon]
      );

    print("Pokemon Deletado");
    if (!mounted) return;
    Navigator.pop(context);
    } catch (ex) {
      print("Erro ao deletar pokemon\r\n$ex");
    }
  }
}
