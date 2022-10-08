import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constantes.dart';
import 'List.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final pokemonNameController = TextEditingController();
  final type1Controller = TextEditingController();
  final type2Controller = TextEditingController();

  late FocusNode pokemonNameFocus;
  late FocusNode type1Focus;
  late FocusNode type2Focus;



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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro de Pokemon"),
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
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Pokemon cadastrado")));
                    }
                  },
                  child: const Text("Cadastrar"))
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
                  if (pokemonNameController.text.isEmpty){
                    pokemonNameFocus.requestFocus();
                  } else if (type1Controller.text.isEmpty){
                    type1Focus.requestFocus();
                  } else if (type2Controller.text.isEmpty) {
                    type2Focus.requestFocus();
                  }
                },
                child: const Icon(Icons.edit)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FloatingActionButton(
                tooltip: 'Lista de pokemon',
                heroTag: 'btnList',
                child: const Icon(Icons.list),
                onPressed: () {
                  Navigator.pushNamed(context, List.route);
                }),
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
}
