import 'package:flutter/material.dart';
import 'package:persistence_form/Persistence/CreateTables.dart';
import 'package:persistence_form/Register.dart';
import 'package:persistence_form/List.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database =
      openDatabase(join(await getDatabasesPath(), 'pokemonList.db'),
          onCreate: (db, version) {
    return CreateTables.createTable(db, version);
  }, version: 1);

  runApp(MaterialApp(
    title: 'Flutter Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => const Register(),
      List.route: (context) => const List(),
    },
  ));
}
