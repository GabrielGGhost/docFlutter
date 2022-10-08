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
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Informar o nome do pokemon';
                  }
                },
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
}
