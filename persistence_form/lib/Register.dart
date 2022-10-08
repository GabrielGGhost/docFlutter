import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constantes.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _formKey = GlobalKey<FormState>();
  final pokemonNameController = TextEditingController();

  @override
  void initState() {
    pokemonNameController.addListener(_printLatestValue);
    super.initState();
  }

  @override
  void dispose() {
    pokemonNameController.dispose();
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
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Informar o nome do pokemon';
                  }
                },
                onChanged: (text){

                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome do pokemon'
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Pokemon cadastrado"))
                      );
                    }
                  },
                  child: const Text("Cadastrar"))
            ],
          ),
        ),
      )
    );
  }

  void _printLatestValue() {
    print('Second text field: ${pokemonNameController.text}');
  }
}
